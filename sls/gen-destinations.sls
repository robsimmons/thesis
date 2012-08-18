gen: typ -> dest -> prop lin.

gen/eval:  gen T D * !of E T >-> {eval E D}.
gen/retn:  gen T D * !of V T * !value V >-> {retn V D}.
gen/cont:  gen T D * !off F T' T 
            >-> {Exists d'. gen T' d' * cont F d' D}.
gen/cont2: gen T D * !off2 F T1 T2 T
            >-> {Exists d1. gen T1 d1 *
                 Exists d2. gen T2 d2 * 
                 cont2 F d1 d2 D}.