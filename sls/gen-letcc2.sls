gen: typ -> dest -> prop pers.

dest/promise: {Exists d'. $gendest d' D * !ofdest d' D T'}.
dest/unused:  $gendest D' D * !off F T' T * !ofdest D' D T'
               >-> {!cont F D' D}

gen/eval: $gen T D * !of E T >-> {eval E D}.
gen/retn: $gen T D * !of V T * !value V >-> {retn V D}.
gen/cont: $gen T D * $gendest D' D * !off F T' T * !ofdest D' D T'
           >-> {$gen T' D' * !cont F D' D}.