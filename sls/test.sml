CM.make "../../r/sls/sources.cm";
Frontend.init ();

(* Figure 6.1, left-hand side *)
Frontend.reset ();
Frontend.load "exp.sls";
Frontend.load "cbv-ev.sls";

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
Frontend.load "ev.sls";
Frontend.load "cbv-sos-steps.sls";

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

(* Section 6.6 *)
Frontend.reset ();
Frontend.load "exp.sls";
Frontend.load "cbv-ev-ssos-fun.sls";
Frontend.load "ssos-mutable.sls";
