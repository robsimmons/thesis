gen: typ -> dest -> prop lin.
gendest: dest -> prop lin.

dest/promise: {Exists d'. $gendest d' D}.
dest/unused:  $gendest D' D >-> {1}

gen/eval: $gen T D * !of E T >-> {$eval E D}.
gen/retn: $gen T D * !of V T * !value V >-> {$retn V D}.
gen/cont: $gen T D * !off F T' T * $gendest D' D
           >-> {$gen T' D' * $cont F D' D}.