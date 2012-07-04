CM.make "../../r/sls/sources.cm";
Frontend.init ();
fun HEADING s = print ("\n\n== "^s^" ==\n\n");

(* Introduction *)

HEADING "Figure 8.1, First approximate PDA spec, two approximation snippets";
Frontend.reset ();
Frontend.load "pda-exp.sls";
Frontend.load "pda-pers.sls";
Frontend.load "pda-pers-precise.sls";
Frontend.load "pda-pers-approx.sls";

HEADING "Figure 8.2, Precise PDA";
Frontend.reset ();
Frontend.load "pda-exp.sls";
Frontend.load "pda-pers-approx2.sls";

HEADING "Figure 8.3, Environment semantics for CBV";
Frontend.reset ();
Frontend.load "exp.sls";
Frontend.read "app1: exp -> frame.app2:(exp -> exp)-> frame.app3:frame.";
Frontend.load "dest-env.sls";

HEADING "Figure 8.4, Verbose approximation";
Frontend.reset ();
Frontend.load "exp.sls";
Frontend.read "app1: exp -> frame.app2:(exp -> exp)-> frame.app3:frame.";
Frontend.load "dest-cfa-1.sls";

HEADING "Figure 8.5, Concise approximation";
Frontend.reset ();
Frontend.load "exp.sls";
Frontend.read "app1: exp -> frame.app2:(exp -> exp)-> frame.app3:frame.";
Frontend.load "dest-cfa-2.sls";

HEADING "Figure 8.6-8.7, Monadic stateful language";
Frontend.reset ();
Frontend.load "exp-alias.sls";
Frontend.read "call1: variable -> (variable -> cmd) -> frame.";
Frontend.load "ssos-monadic.sls";
Frontend.load "ssos-monadic2.sls";

HEADING "Figure 8.8, Alias analysis";
Frontend.reset ();
Frontend.load "exp-alias-approx.sls";
Frontend.read "call1: label -> (label -> cmd) -> frame.";
Frontend.load "ssos-monadic-approx.sls";
