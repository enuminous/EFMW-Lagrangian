#include <lean/lean.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <getopt.h>
extern void lean_initialize(void);
extern lean_object *l_Lean_initSearchPath(lean_object *, lean_object *);
extern lean_object *lean_enable_initializer_execution(void);
extern lean_object *lean_shell_options_mk(lean_object *);
extern lean_object *lean_shell_options_process(lean_object *, uint32_t, lean_object *);
extern lean_object *lean_shell_main(lean_object *, lean_object *);
static lean_object *unwrap(lean_object *r) {
  if (lean_io_result_is_error(r)) { lean_io_result_show_error(r); exit(1); }
  return lean_io_result_take_value(r);
}
int main(int argc, char **argv) {
  const char *root=getenv("EFMW_LEAN_LIBRARY_ROOT");
  if (!root) { fputs("Set EFMW_LEAN_LIBRARY_ROOT to the installed Lean 4.28.0 root.\n",stderr); return 2; }
  if (argc==2 && !strcmp(argv[1],"--print-prefix")) { puts(root); return 0; }
  lean_initialize();
  lean_dec(unwrap(l_Lean_initSearchPath(lean_mk_string(root),lean_box(0))));
  lean_dec(unwrap(lean_enable_initializer_execution()));
  lean_object *opts=lean_shell_options_mk(lean_box(0));
  static struct option options[]={
    {"version",0,0,'v'}, {"githash",0,0,'g'}, {"json",0,0,'J'},
    {"root",1,0,'R'}, {"setup",1,0,'u'}, {"deps",0,0,'d'},
    {"deps-json",0,0,'N'}, {"run",0,0,'r'}, {"error",1,0,'E'},
    {"plugin",1,0,'p'}, {"load-dynlib",1,0,'l'}, {0,0,0,0}};
  int c;
  while ((c=getopt_long(argc,argv,"o:i:c:b:D:R:u:E:p:l:T:M:s:t:j:vgJdNar",options,0))!=-1) {
    lean_object *arg=lean_box(0);
    if(optarg) {arg=lean_alloc_ctor(1,1,0);lean_ctor_set(arg,0,lean_mk_string(optarg));}
    lean_object *r=lean_shell_options_process(opts,(uint32_t)c,arg);
    if(lean_io_result_is_error(r)) {int rc=(int)lean_unbox(lean_io_result_get_error(r));lean_dec(r);return rc;}
    opts=lean_io_result_take_value(r);
    if(c=='r') break;
  }
  lean_io_mark_end_initialization();
  lean_init_task_manager();
  lean_object *args=lean_box(0);
  for(int i=argc-1;i>=optind;--i) {lean_object *n=lean_alloc_ctor(1,2,0);lean_ctor_set(n,0,lean_mk_string(argv[i]));lean_ctor_set(n,1,args);args=n;}
  lean_object *r=lean_shell_main(args,opts);
  if(lean_io_result_is_error(r)) {lean_io_result_show_error(r);lean_dec(r);return 1;}
  int rc=(int)lean_unbox(lean_io_result_get_value(r));lean_dec(r);return rc;
}
