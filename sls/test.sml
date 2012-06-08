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

(* Removed 1 *)
Frontend.reset ();
Frontend.load "exp.sls";
Frontend.load "ev.sls";
Frontend.load "cbv-arb.sls";

(* Removed 2 *)
Frontend.reset ();
Frontend.load "exp.sls";
Frontend.load "evalretn.sls";
Frontend.load "cbv-arb-ssos.sls";

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

(* Figure 6.6 *)
Frontend.reset ();
Frontend.load "exp.sls";
Frontend.load "cbv-ev-ssos-fun.sls";

(* Figure 6.7 *)
Frontend.load "ssos-mutable.sls";

(* Figure 6.8 *)
Frontend.load "ssos-cbneed.sls";

(* Figure 6.9 *)
Frontend.load "ssos-cbneed-refun.sls";


Frontend.reset ();


Frontend.load "exp.sls";
Frontend.read "#operationalize \"cbv-sos-ctx.auto.sls\"\n(step ~> eval retn).";
Frontend.load "cbv-sos.sls";
Frontend.read "#operationalize stop.";
Frontend.reset ();

Frontend.load "exp.sls";
Frontend.load "cbv-sos-ctx.auto.sls";
Frontend.reset ();
