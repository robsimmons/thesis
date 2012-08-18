CM.make "../../r/sls/sources.cm";
Frontend.init ();
fun HEADING s = print ("\n\n== "^s^" ==\n\n");

HEADING "Figure 9.1: Ordered abstract machine with parallel evaluation and \
        \failure";
Frontend.reset ();
Frontend.read "#clf \"figure-9.1.clf\".";
Frontend.load "exp.sls";
Frontend.read "app1: frame.";
Frontend.load "gen-order-prog.sls";
Frontend.read "#clf stop.";

(* gen-order-core *)

(* gen-order-bad *)

HEADING "Figure 9.2: Generative invariant: well-formed process states";
Frontend.reset ();
Frontend.load "exp.sls";
Frontend.read "app1: frame.";
Frontend.load "gen-order-prog.sls";
Frontend.load "gen-order.sls";

HEADING "Figure 9.3: Typing rules for expressions";
Frontend.reset ();
Frontend.load "exp.sls";
Frontend.load "gen-order-of.sls";

HEADING "Figure 9.4: Generative invariant: well-typed process states";
Frontend.read "app1: frame.";
Frontend.read "value: exp -> prop.";
Frontend.load "gen-order-prog.sls";
Frontend.load "gen-ordertp.sls";

HEADING "Figure 9.5: Generative invariant: well-typed mutable storage";
Frontend.load "ssos-mutable.sls";
Frontend.load "gen-store.sls";

HEADING "Figure 9.5: Generative invariant: destination-passing";
Frontend.reset ();
Frontend.load "exp.sls";
Frontend.load "gen-order-of.sls";
Frontend.read "off: frame -> typ -> typ -> prop.";
Frontend.read "off2: frame -> typ -> typ -> typ -> prop.";
