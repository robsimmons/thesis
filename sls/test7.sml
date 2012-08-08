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



HEADING "SECTION 7.1 - Destination-adding";

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

HEADING "The automatically generated version from Figure 6.6 is equivalent to \
        \7.4 (generated in test6.sml)";
Frontend.reset ();
Frontend.load "exp.sls";
Frontend.load "cbv.autodest.sls";

HEADING "The automatically generated, non-vestigial miniml includes 7.5 as a \
        \subset (generated in test6.sml)";
Frontend.reset ();
Frontend.load "exp.sls";
Frontend.load "exp-miniml.sls";
Frontend.load "miniml.autodest.sls";

HEADING "Figure 7.5: Translation of Figure 6.6 without vestigial destinations";
Frontend.reset ();
Frontend.load "exp.sls";
Frontend.read "app1: exp -> frame.";
Frontend.read "app2: (exp -> exp) -> frame.";
Frontend.load "dest-cbv.sls";



HEADING "SECTION 7.2 - Exploring the richer fragment";

HEADING "Figure 7.6: Destination-passing semantics for parallel evaluation of \
        \pairs";
Frontend.read "pair1: frame.";
Frontend.load "dest-pair.sls";

HEADING "Figure 7.7: Integration of parallelism and exceptions; signals \
        \failure as soon as possible";
Frontend.load "dest-fail-paror.sls";

HEADING "Figure 7.8: Semantics of simple synchronization"; 
Frontend.load "dest-synch.sls";

HEADING "Figure 7.9: Semantics of call-by-future functions";
Frontend.load "dest-futures.sls";

HEADING "Figure 7.11: Semantics of first-class continuations (with letcc)";
Frontend.reset ();
Frontend.load "exp.sls";
Frontend.load "dest-letcc.sls";
