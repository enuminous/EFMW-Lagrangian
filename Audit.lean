import Lean
import EFMWLagrangian

open Lean in
run_cmd do
  let env ← getEnv
  let allowed : Array Name := #[``propext, ``Classical.choice, ``Quot.sound]
  let mut declarations := 0
  let mut theorems := 0
  for (name, info) in env.constants.toList do
    if (`EFMWLagrangian).isPrefixOf (privateToUserName name) && !info.isUnsafe then
      declarations := declarations + 1
      if info matches .thmInfo _ then
        theorems := theorems + 1
      for ax in (← collectAxioms name) do
        unless allowed.contains ax do
          throwError "Unapproved axiom {ax} used by {name}"
  if theorems < 720 then
    throwError "Missing generated scalar certificates: only {theorems} theorems"
  logInfo m!"Axiom audit passed: {declarations} safe declarations; {theorems} theorem declarations."
