gen: typ -> dest -> prop lin.
gendest: dest -> prop lin.

dest/promise: {Exists d. $gendest d}.
dest/unused:  $gendest D >-> {1}.

gen/eval:  gen T D * !of E T >-> {eval E D}.
gen/retn:  gen T D * !of V T * !value V >-> {retn V D}.
gen/cont:  gen T D * !off F T' T * $gendest D'
            >-> {gen T' D' * cont F D' D}.
gen/cont2: gen T D * !off2 F T1 T2 T * $gendest D1 * $gendest D2
            >-> {gen T1 D1 * gen T2 D2 * cont2 F D1 D2 D}.