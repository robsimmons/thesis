CM.make "../../r/sls/sources.cm";
Frontend.init ();
fun HEADING s = print ("\n\n== "^s^" ==\n\n");

(* Introduction *)

HEADING "SECTION 8.2 - Using approximation";

HEADING "Figure 8.1: Skolemized approximate version of the PDA specification \
        \from Figure 7.2";
Frontend.reset ();
Frontend.read "#clf \"figure-8.1.clf\".";
Frontend.load "pda-exp.sls";
Frontend.load "pda-pers.sls";
Frontend.read "#clf stop.";

HEADING "In text: precise approx";
Frontend.reset ();
Frontend.read "#clf \"section-8.2-a.clf\".";
Frontend.load "pda-exp.sls";
Frontend.read "hd: dest -> dest -> prop pers.";
Frontend.read "left: tok -> dest -> dest -> prop pers.";
Frontend.read "right: tok -> dest -> dest -> prop pers.";
Frontend.read "stack: tok -> dest -> dest -> prop pers.";
Frontend.load "pda-pers-precise.sls";
Frontend.read "#clf stop.";

HEADING "In text: approx";
Frontend.reset ();
Frontend.read "#clf \"section-8.2-b.clf\".";
Frontend.load "pda-exp.sls";
Frontend.read "hd: dest -> dest -> prop pers.";
Frontend.read "left: tok -> dest -> dest -> prop pers.";
Frontend.read "right: tok -> dest -> dest -> prop pers.";
Frontend.read "stack: tok -> dest -> dest -> prop pers.";
Frontend.load "pda-pers-approx.sls";
Frontend.read "#clf stop.";

HEADING "Figure 8.2: Approximated PDA specification";
Frontend.reset ();
Frontend.read "#clf \"figure-8.2.clf\".";
Frontend.load "pda-exp.sls";
Frontend.load "pda-pers-approx2.sls";
Frontend.read "#clf stop.";



HEADING "SECTION 8.4 - Control flow analysis";

HEADING "Figure 8.3: Alternative environment semantics for CBV evaluation";
Frontend.reset ();
Frontend.read "#clf \"figure-8.3.clf\".";
Frontend.load "exp.sls";
Frontend.read "app1: exp -> frame.";
Frontend.read "app2: (exp -> exp) -> frame.";
Frontend.read "app3: frame.";
Frontend.load "dest-env.sls";
Frontend.read "#clf stop.";

HEADING "Figure 8.4: A control-flow analysis derived from Figure 8.3";
Frontend.reset ();
Frontend.read "#clf \"figure-8.4.clf\".";
Frontend.load "exp.sls";
Frontend.read "app1: exp -> frame.";
Frontend.read "app2: (exp -> exp) -> frame.";
Frontend.read "app3: frame.";
Frontend.load "dest-cfa-1.sls";
Frontend.read "#clf stop.";

HEADING "Figure 8.5: Simplification of Figure 8.4 \
        \that eliminates the vestigial argument to eval";
Frontend.reset ();
Frontend.read "#clf \"figure-8.5.clf\".";
Frontend.load "exp.sls";
Frontend.read "app1: exp -> frame.";
Frontend.read "app2: (exp -> exp) -> frame.";
Frontend.read "app3: frame.";
Frontend.load "dest-cfa-2.sls";
Frontend.read "#clf stop.";

HEADING "Figure 8.7: Semantics of functions in the simple monadic language";
Frontend.reset ();
Frontend.read "#clf \"figure-8.7-8.8.clf\".";
Frontend.load "exp-alias.sls";
Frontend.read "call1: variable -> (variable -> cmd) -> frame.";
Frontend.load "ssos-monadic.sls";

HEADING "Figure 8.8: Semantics of mutable pairs in the simple monadic language";
Frontend.load "ssos-monadic2.sls";
Frontend.read "#clf stop.";

HEADING "Figure 8.9: Alias analysis for the simple monadic language";
Frontend.reset ();
Frontend.read "#clf \"figure-8.9.clf\".";
Frontend.load "exp-alias-approx.sls";
Frontend.read "call1: label -> (label -> cmd) -> frame.";
Frontend.load "ssos-monadic-approx.sls";
Frontend.read "#clf stop.";
