gen: typ -> dest -> prop lin.
gendest: dest -> prop lin.

dest/promise: {Exists d'. $gendest d' D}.
dest/unused:  $gendest D' D >-> {1}

gen/eval: $gen Tp D * !of E Tp >-> {$eval E D}.
gen/retn: $gen Tp D * !of V Tp * !value V >-> {$retn V D}.
gen/cont: $gen Tp D * !off F Tp' Tp * $gendest D' D
           >-> {$gen Tp' D' * $cont F D' D}.