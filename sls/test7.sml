CM.make "../../r/sls/sources.cm";
Frontend.init ();

(* Introduction *)

(* Ordered PDA from the intro (now with actual code!) *)
Frontend.reset ();
Frontend.load "pda-exp.sls";
Frontend.load "pda-ord.sls";

(* Linear PDA (now with actual code!) *)
Frontend.reset ();
Frontend.load "pda-exp.sls";
Frontend.load "pda-lin.sls";

(* Linear/persistent PDA (woah) *)
Frontend.reset ();
Frontend.load "pda-exp.sls";
Frontend.load "pda-pers.sls";

