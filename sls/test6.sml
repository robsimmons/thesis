CM.make "../../r/sls/sources.cm";
Frontend.init ();
fun HEADING s = print ("\n\n== "^s^" ==\n\n");

(* Figure 6.1, left-hand side *)
Frontend.reset ();
Frontend.load "exp.sls";
Frontend.read "#operationalize \"cbv-ev-ssos.auto.sls\"\n(ev ~> eval retn).";
Frontend.load "cbv-ev.sls";
Frontend.read "#operationalize stop.";

Frontend.reset ();
Frontend.load "exp.sls";
Frontend.load "cbv-ev-ssos.auto.sls";

(* Figure 6.1, right-hand side *)
Frontend.reset ();
Frontend.load "exp.sls";
Frontend.load "cbv-ev-ssos.sls";

(* Figure 6.2 *)
Frontend.reset ();
Frontend.load "exp.sls";
Frontend.load "evalretn.sls";
Frontend.load "cbv-ev-ssos-tail.sls";

(* Figure 6.3 prelude, in-line with text. *)
Frontend.reset ();
Frontend.load "exp.sls";
Frontend.load "cbv-sos-value.sls";
Frontend.load "cbv-sos-step.sls";
Frontend.read "#operationalize \"cbv-sos-proc2.auto.sls\"\n(ev ~> eval retn).";
Frontend.load "ev.sls";
Frontend.load "cbv-sos-steps.sls";
Frontend.read "#operationalize stop.";

Frontend.reset ();
Frontend.load "exp.sls";
Frontend.load "cbv-sos-value.sls";
Frontend.load "cbv-sos-step.sls";
Frontend.load "cbv-sos-proc2.auto.sls";

(* Figure 6.3, left-hand side *)
Frontend.reset ();
Frontend.load "exp.sls";
Frontend.load "cbv-sos-value.sls";
Frontend.load "cbv-sos-step.sls";
Frontend.load "evalretn.sls";
Frontend.load "cbv-sos-proc2.sls";

(* Figure 6.3, right-hand side *)
Frontend.reset ();
Frontend.load "exp.sls";
Frontend.load "cbv-sos-value.sls";
Frontend.load "cbv-sos-step.sls";
Frontend.load "evalretn.sls";
Frontend.load "cbv-sos-proc.sls";

(* Figure 6.4 *)
Frontend.reset ();
Frontend.load "exp.sls";
Frontend.load "cbv-uncurry.sls";

HEADING "Figure 6.6: Parallel evaluation of application";
Frontend.reset ();
Frontend.load "exp.sls";
Frontend.load "cbv-ev-ssos-par.sls";

HEADING "Figure 6.7: A first order ordered abstract machine semantics for CBV";
Frontend.reset ();
Frontend.load "exp.sls";
Frontend.load "cbv-ev-ssos-fun.sls";

HEADING "Figure 6.6, generative signature (in-line with text)";
Frontend.reset ();
Frontend.load "exp.sls";
Frontend.load "evalretn.sls";
Frontend.load "contframe.sls";
Frontend.load "cbv-ev-ssos-gen.sls";



(* FIGURE 6.7 -- Semantics of some pure functional features *)

HEADING "Fig 6.7, left-hand side along with the bad case analysis rule";
Frontend.reset ();
Frontend.load "exp.sls";
Frontend.load "cbv-ev-ssos-fun.sls";
Frontend.read "#operationalize \"ssos-ml-core.auto.sls\"\n(ev ~> eval retn).";
Frontend.load "ev.sls";
Frontend.load "ev-minml-core.sls";
Frontend.read "#operationalize stop.";

HEADING "Fig 6.7, checking the operationalization of the left-hand side";
Frontend.reset ();
Frontend.load "exp.sls";
Frontend.load "evalretn.sls";
Frontend.load "ssos-ml-core.auto.sls";

HEADING "Fig 6.7, right-hand side (ordered abstract machine)";
Frontend.load "exp.sls";
Frontend.load "cbv-ev-ssos-fun.sls";
Frontend.load "ssos-minml-core.sls";



(* FIGURE 6.8 - Semantics of nondeterminstic choice *)

HEADING "Fig 6.8, left-hand side (natural semantics)";
Frontend.reset ();
Frontend.load "exp.sls";
Frontend.load "ev.sls";
Frontend.load "cbv-arb.sls";

HEADING "Fig 6.8, right-hand side (ordered abstract machine)";
Frontend.load "exp.sls";
Frontend.load "cbv-ev-ssos-fun.sls";
Frontend.load "cbv-arb-ssos.sls";



(* SECTION 6.4.2, Conditionals  and factoring *)

HEADING "Fig 6.9, problematic semantics of case analysis (not defun)";
Frontend.reset ();
Frontend.load "exp.sls";
Frontend.load "cbv-ev-ssos-fun.sls";
Frontend.load "ssos-minml-case-bad.sls";

HEADING "Fig 6.10, problematic semantics of case analysis (defun)";
Frontend.reset ();
Frontend.load "exp.sls";
Frontend.load "cbv-ev-ssos-fun.sls";
Frontend.load "ssos-minml-case-bad-defun.sls";

HEADING "Figure 6.11, semantics of case analysis (not defun)";
Frontend.reset ();
Frontend.load "exp.sls";
Frontend.load "ssos-minml-case-factor.sls";

Frontend.reset ();
Frontend.load "exp.sls";
Frontend.load "ssos-minml-case-factor.auto.sls";

Frontend.load "exp.sls";
Frontend.load "cbv-ev-ssos-fun.sls";
Frontend.read "casen: exp -> exp -> (exp -> exp) -> prop ord.";
Frontend.load "ssos-casen-notdefun.sls";

HEADING "Figure 6.12, semantics of case analysis (defun)";
Frontend.load "exp.sls";
Frontend.load "cbv-ev-ssos-fun.sls";
Frontend.read "casen: exp -> exp -> (exp -> exp) -> prop ord.";
Frontend.load "ssos-casen.sls";

HEADING "Rejected semantics of case analysis (not defun)";
Frontend.reset ();
Frontend.load "exp.sls";
Frontend.load "cbv-ev-ssos-fun.sls";
Frontend.load "ssos-minml-case-good.sls";

HEADING "Rejected semantics of case analysis (defun)";
Frontend.reset ();
Frontend.load "exp.sls";
Frontend.load "cbv-ev-ssos-fun.sls";
Frontend.load "selectn.sls";
Frontend.load "ssos-minml-case-good-defun.sls";



(* SECTION 6.5, Exploring the richer fragment *)

HEADING "Fig 6.13, mutable storage";
Frontend.reset ();
Frontend.load "exp.sls";
Frontend.load "cbv-ev-ssos-fun.sls";
Frontend.load "ssos-mutable.sls";

HEADING "Fig 6.14, call-by-need recursive suspensions";
Frontend.reset ();
Frontend.load "exp.sls";
Frontend.load "cbv-ev-ssos-fun.sls";
Frontend.load "ssos-cbneed.sls";

HEADING "Fig 6.15, call-by-need recursive suspensions (refunctionalized)";
Frontend.reset ();
Frontend.load "exp.sls";
Frontend.load "cbv-ev-ssos-fun.sls";
Frontend.load "bindloc.sls";
Frontend.load "ssos-cbneed-refun.sls";

HEADING "Fig 6.16 & 6.17, lazy call-by-need functions and env. semantics";
Frontend.reset ();
Frontend.load "exp.sls";
Frontend.load "cbv-ev-ssos-fun.sls";
Frontend.load "ssos-by-need.sls";
Frontend.load "ssos-by-env.sls";

HEADING "Fig 6.18, recoverable failure";
Frontend.reset ();
Frontend.load "exp.sls";
Frontend.load "cbv-ev-ssos-fun.sls";
Frontend.load "ssos-fail.sls";

HEADING "Section 6.5.4, refunctionalized successor";
Frontend.reset ();
Frontend.load "exp.sls";
Frontend.load "cbv-ev-ssos-fun.sls";
Frontend.load "ssos-fail.sls";

HEADING "Section 6.5.4, parallel exception handling";
Frontend.reset ();
Frontend.load "exp.sls";
Frontend.load "cbv-ev-ssos-fun.sls";
Frontend.read "cont2: frame -> prop ord. error: prop ord.";
Frontend.load "ssos-fail-binary.sls";

HEADING "Figure 6.19, left-hand side (small-step evaluation)";
Frontend.reset ();
Frontend.load "exp.sls";
Frontend.load "cbv-sos.sls";

HEADING "Figure 6.19, right-hand side (small-step evaluation)";
Frontend.reset ();
Frontend.load "exp.sls";
Frontend.read "cont: frame -> prop ord.";
Frontend.load "cbv-sos-eval.sls";

HEADING "Figure 6.20/6.21 left-hand side, natural semantics for lambdacircle";
Frontend.reset ();
Frontend.load "exp.sls";
Frontend.load "ev.sls";
Frontend.load "lc-ev2.sls";
Frontend.load "lc-ev3.sls";

HEADING "Figure 6.20/6.21 right-hand side, SSOS for lambdacircle";
Frontend.reset ();
Frontend.load "exp.sls";
Frontend.load "cbv-ev-ssos-fun.sls";
Frontend.load "lc-ev2.sls";
Frontend.load "lc-ssos-3.sls";

(*
Frontend.reset ();
Frontend.load "exp.sls";
Frontend.read "#operationalize \"nat.auto.sls\"\n(inc ~> inc retn_inc)\n(plus ~> plus retn_plus).";
Frontend.load "nat.sls";
Frontend.read "#operationalize stop.";
*)

(*
Frontend.reset ();


Frontend.load "exp.sls";
Frontend.read "#operationalize \"cbv-sos-ctx.auto.sls\"\n(step ~> eval retn).";
Frontend.load "cbv-sos.sls";
Frontend.read "#operationalize stop.";
Frontend.reset ();

Frontend.load "exp.sls";
Frontend.load "cbv-sos-ctx.auto.sls";
Frontend.reset ();


Frontend.load "exp.sls";
Frontend.read "#operationalize \"lc-ssos.auto.sls\"\n(ev0 ~> eval retn).";
Frontend.load "lc-ev.sls";
Frontend.read "#operationalize stop.";
Frontend.reset ();

Frontend.load "exp.sls";
Frontend.load "lc-ssos.auto.sls";
Frontend.reset ();
*)
