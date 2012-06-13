CM.make "../../r/sls/sources.cm";
Frontend.init ();

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

(* Figure 6.5 *)
Frontend.reset ();
Frontend.load "exp.sls";
Frontend.load "cbv-ev-ssos-par.sls";

(* Figure 6.6 *)
Frontend.reset ();
Frontend.load "exp.sls";
Frontend.load "cbv-ev-ssos-fun.sls";

(* Section 6.3, in-line with text *)
Frontend.reset ();
Frontend.load "exp.sls";
Frontend.load "evalretn.sls";
Frontend.load "contframe.sls";
Frontend.load "cbv-ev-ssos-gen.sls";

(* NATURAL SEMANTICS FOR MINIML *)

(* Figure 6.7 - "left hand side + bad case analysis" *)
Frontend.reset ();
Frontend.load "exp.sls";
Frontend.load "cbv-ev-ssos-fun.sls";
Frontend.read "#operationalize \"ssos-ml-core.auto.sls\"\n(ev ~> eval retn).";
Frontend.load "ev.sls";
Frontend.load "ev-minml-core.sls";

(* Figure 6.8 - left hand side *)
Frontend.load "cbv-arb.sls";

Frontend.read "#operationalize stop.";

Frontend.reset ();
Frontend.load "exp.sls";
Frontend.load "cbv-ev-ssos-fun.sls";
Frontend.load "ssos-ml-core.auto.sls";


(* Figure 6.9, 6.10 *)
Frontend.reset ();
Frontend.load "exp.sls";
Frontend.load "cbv-ev-ssos-fun.sls";
Frontend.load "ssos-minml-case-bad.sls";
Frontend.load "ssos-minml-case-bad-defun.sls";

(* Figure 6.11, 6.12 *)
Frontend.reset ();
Frontend.load "exp.sls";
Frontend.load "cbv-ev-ssos-fun.sls";
Frontend.load "ssos-minml-case-good.sls";
Frontend.load "ssos-minml-case-good-defun.sls";

(* Figure 6.13 *)
Frontend.reset ();
Frontend.load "exp.sls";
Frontend.load "cbv-ev-ssos-fun.sls";
Frontend.load "ssos-mutable.sls";

Frontend.reset ();
Frontend.load "exp.sls";
Frontend.load "ev.sls";
Frontend.read "#operationalize \"case.auto.sls\"\n(ev ~> eval retn).";
Frontend.load "ev-miniml-case-good.sls";
Frontend.read "#operationalize stop.";

Frontend.reset ();
Frontend.load "exp.sls";
Frontend.load "cbv-ev-ssos-fun.sls";
Frontend.load "case.auto.sls";

(* Figure 6.14 *)
Frontend.reset ();
Frontend.load "exp.sls";
Frontend.load "cbv-ev-ssos-fun.sls";
Frontend.load "ssos-cbneed.sls";

(* Figure 6.15 *)
Frontend.load "ssos-cbneed-refun.sls";




Frontend.reset ();
Frontend.load "exp.sls";
Frontend.read "#operationalize \"nat.auto.sls\"\n(inc ~> inc retn_inc)\n(plus ~> plus retn_plus).";
Frontend.load "nat.sls";
Frontend.read "#operationalize stop.";

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
