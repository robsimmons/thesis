CM.make "../../sls/sources.cm";
fun HEADING s = print ("\n\n== "^s^" ==\n\n");
Frontend.init ();

HEADING "NATURAL SEMANTICS";
Frontend.reset ();
Frontend.read "#operationalize \"ord-nested.auto.sls\" \
\                 (ev ~> eval retn)\
\                 (casen ~> casen retn)\
\                 (caseb ~> caseb retn).";
Frontend.load "compose/pure-exp.sls";
Frontend.load "compose/pure-natsem.sls";
Frontend.load "compose/concur-exp.sls";
Frontend.load "compose/concur-natsem.sls";
Frontend.read "#operationalize stop.";

HEADING "ORDERED ABSTRACT MACHINES (nested)";
Frontend.reset ();
Frontend.read "#defunctionalize \"ord-flat.auto.sls\" \
\                 (cont frame : ord).";
Frontend.load "ord-nested.auto.sls";
Frontend.load "compose/imp-exp.sls";
Frontend.load "compose/imp-ordmachine.sls";
Frontend.read "#defunctionalize stop.";

HEADING "ORDERED ABSTRACT MACHINES (flat)";
Frontend.reset ();
Frontend.read "#destadd \"dest.auto.sls\" \
\                 dest eval retn error casen caseb.";
Frontend.load "ord-flat.auto.sls";
Frontend.load "compose/control-exp.sls";
Frontend.load "compose/control-ordmachine.sls";
Frontend.load "compose/susp-ordmachine.sls";

HEADING "DESTINATION-PASSING";
Frontend.reset ();
Frontend.read "#clf \"miniml.clf\".";
Frontend.load "dest.auto.sls";
Frontend.load "compose/par-dest1.sls";
Frontend.load "compose/par-dest2.sls";
Frontend.load "compose/concur-dest1.sls";
Frontend.load "compose/concur-dest2.sls";
Frontend.read "#clf stop.";
