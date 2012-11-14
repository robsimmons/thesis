gen: typ -> dest -> prop lin.

gen/dest: {Exists d:dest. one}.
gen/eval: $gen T D * !of E T >-> {$eval E D}.
gen/retn: $gen T D * !of V T * !value V >-> {$retn V D}.
gen/cont: $gen T D * !off F T' T 
           >-> {Exists d'. gen T' d' * $cont F d' D}.