CM.make "../../r/sls/sources.cm";
Frontend.init ();
fun HEADING s = print ("\n\n== "^s^" ==\n\n");



HEADING "INTRODUCTION";

HEADING "Figure 7.1: Ordered SLS specification \
        \of a PDA for parenthesis matching";
Frontend.reset ();
Frontend.load "pda-exp.sls";
Frontend.read "#destadd \"pda-ord.autodest.sls\" dest.";
Frontend.load "pda-ord.sls";
Frontend.read "#destadd stop.";

HEADING "Figure 7.2: Linear SLS specification \
        \of a PDA for parenthesis matching";
Frontend.reset ();
Frontend.load "pda-exp.sls";
Frontend.load "pda-lin.sls";

HEADING "The automatically generated spec is equivalent to Figure 7.2";
Frontend.reset ();
Frontend.load "pda-exp.sls";
Frontend.load "pda-ord.autodest.sls";

HEADING "Figure 7.4: Translation of Figure 6.6 with vestigial destinations";
Frontend.reset ();
Frontend.load "exp.sls";
Frontend.read "app1: exp -> frame.";
Frontend.read "app2: (exp -> exp) -> frame.";
Frontend.load "dest-vestige.sls";

HEADING "The automatically generated version from test6.sls";
Frontend.reset ();
Frontend.load "exp.sls";
Frontend.load "cbv.autodest.sls";


(*


HEADING "Figure 7.5-7.8, cbv, parallelism, failure, synchronization";
Frontend.reset ();
Frontend.load "exp.sls";
Frontend.read "app1: exp -> frame.app2:(exp -> exp)-> frame.";
Frontend.load "dest-cbv.sls";
Frontend.load "dest-pair.sls";
Frontend.load "dest-fail-paror.sls";
Frontend.load "dest-synch.sls";

HEADING "Figure 7.9, futures";
Frontend.reset ();
Frontend.load "exp.sls";
Frontend.read "app1: exp -> frame.app2:(exp -> exp)-> frame.";
Frontend.load "dest-cbv.sls";
Frontend.load "dest-futures.sls";

HEADING "Figure 7.10, letcc";
Frontend.load "exp.sls";
Frontend.load "dest-letcc.sls";

*)
