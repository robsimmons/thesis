CM.make "../../r/sls/sources.cm";
Frontend.init ();
fun HEADING s = print ("\n\n== "^s^" ==\n\n");

(* Introduction *)

HEADING "SECTION 8.2 - Using approximation";

HEADING "Figure 8.1: Skolemized approximate version of the PDA specification \
        \from Figure 7.2";
Frontend.reset ();
Frontend.load "pda-exp.sls";
Frontend.load "pda-pers.sls";

HEADING "In text: precise approx";
Frontend.reset ();
Frontend.load "pda-exp.sls";
Frontend.read "hd: dest -> dest -> prop pers.";
Frontend.read "left: tok -> dest -> dest -> prop pers.";
Frontend.read "right: tok -> dest -> dest -> prop pers.";
Frontend.read "stack: tok -> dest -> dest -> prop pers.";
Frontend.load "pda-pers-precise.sls";

HEADING "In text: approx";
Frontend.reset ();
Frontend.load "pda-exp.sls";
Frontend.read "hd: dest -> dest -> prop pers.";
Frontend.read "left: tok -> dest -> dest -> prop pers.";
Frontend.read "right: tok -> dest -> dest -> prop pers.";
Frontend.read "stack: tok -> dest -> dest -> prop pers.";
Frontend.load "pda-pers-approx.sls";

Frontend.reset ();
Frontend.load "pda-exp.sls";
Frontend.load "pda-pers-approx2.sls";

HEADING "Figure 8.2: Approximated PDA specification";
Frontend.reset ();
Frontend.load "pda-exp.sls";
Frontend.load "pda-pers-approx2.sls";



HEADING "SECTION 8.4 - Control flow analysis";

HEADING "Figure 8.3: Alternative environment semantics for CBV evaluation";
Frontend.reset ();
Frontend.load "exp.sls";
Frontend.read "app1: exp -> frame.";
Frontend.read "app2: (exp -> exp) -> frame.";
Frontend.read "app3: frame.";
Frontend.load "dest-env.sls";

HEADING "Figure 8.4: A control-flow analysis derived from Figure 8.3";
Frontend.reset ();
Frontend.load "exp.sls";
Frontend.read "app1: exp -> frame.";
Frontend.read "app2: (exp -> exp) -> frame.";
Frontend.read "app3: frame.";
Frontend.load "dest-cfa-1.sls";

HEADING "Figure 8.5: Simplification of Figure 8.4 \
        \that eliminates the vestigial argument to eval";
Frontend.reset ();
Frontend.load "exp.sls";
Frontend.read "app1: exp -> frame.";
Frontend.read "app2: (exp -> exp) -> frame.";
Frontend.read "app3: frame.";
Frontend.load "dest-cfa-2.sls";

HEADING "Figure 8.7: Semantics of functions in the simple monadic language";
Frontend.reset ();
Frontend.load "exp-alias.sls";
Frontend.read "call1: variable -> (variable -> cmd) -> frame.";
Frontend.load "ssos-monadic.sls";

HEADING "Figure 8.8: Semantics of mutable pairs in the simple monadic language";
Frontend.load "ssos-monadic2.sls";

HEADING "Figure 8.9: Alias analysis for the simple monadic language";
Frontend.reset ();
Frontend.load "exp-alias-approx.sls";
Frontend.read "call1: label -> (label -> cmd) -> frame.";
Frontend.load "ssos-monadic-approx.sls";
