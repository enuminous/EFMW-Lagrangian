import Lean
import EFMWContinuum

open Lean in
run_cmd do
  let env ← getEnv
  let allowed : Array Name := #[``propext, ``Classical.choice, ``Quot.sound]
  let mut roots : Array Name := #[]
  let mut realCount := 0
  let mut actionCount := 0
  for (name, info) in env.constants.toList do
    if (`EFMWContinuum).isPrefixOf (privateToUserName name) && !info.isUnsafe then
      roots := roots.push name
      if info matches .thmInfo _ then
        if name.toString.startsWith "EFMWContinuum.real_derivative_" then
          realCount := realCount + 1
        if name.toString.startsWith "EFMWContinuum.action_derivative_" then
          actionCount := actionCount + 1
  if realCount != 360 || actionCount != 360 then
    throwError "Incomplete bridge: {realCount} real and {actionCount} action derivatives"
  -- One shared visited set audits the complete transitive dependency union efficiently.
  let (_, state) := ((roots.forM CollectAxioms.collect).run env).run {}
  for ax in state.axioms do
    unless allowed.contains ax do
      throwError "Unapproved axiom {ax} in continuum bridge"
  logInfo m!"Continuum axiom audit passed: {roots.size} safe declarations; 360 real derivative and 360 action derivative theorems. Allowed transitive axioms: {state.axioms}."
