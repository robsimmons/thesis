CM.make "../../r/sls/sources.cm";
Frontend.init ();
fun HEADING s = print ("\n\n== "^s^" ==\n\n");

(* Introduction *)

HEADING "Figure 7.1, Ordered SLS spec";
Frontend.reset ();
Frontend.load "pda-exp.sls";
Frontend.load "pda-ord.sls";

HEADING "Figure 7.2, Linear SLS spec";
Frontend.reset ();
Frontend.load "pda-exp.sls";
Frontend.load "pda-lin.sls";

HEADING "Linear/persistent SLS spec (unused)";
Frontend.reset ();
Frontend.load "pda-exp.sls";
Frontend.load "pda-pers.sls";

HEADING "Figure 7.4, translation with vestage";
Frontend.reset ();
Frontend.load "exp.sls";
Frontend.read "app1: exp -> frame.app2:(exp -> exp)-> frame.";
Frontend.load "dest-vestige.sls";

HEADING "Figure 7.5-7.7, cbv, parallelism, failure, synchronization";
Frontend.reset ();
Frontend.load "exp.sls";
Frontend.read "app1: exp -> frame.app2:(exp -> exp)-> frame.";
Frontend.load "dest-cbv.sls";
Frontend.load "dest-pair.sls";
Frontend.load "dest-fail-paror.sls";
Frontend.load "dest-synch.sls";
