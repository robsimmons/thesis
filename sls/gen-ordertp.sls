off: frame -> typ -> typ -> prop.
off/let1: off (let1 \x. E' x) T' T
           <- (Pi x. of x T' -> of (E' x) T).

off2: frame -> typ -> typ -> typ -> prop.
off2/app1:  off2 app1 (arr T' T) T' T. 

gen: typ -> prop ord.
gen/eval:   gen T * !of E T >-> {eval E}.
gen/retn:   gen T * !of V T * !value V >-> {retn V}.
gen/cont:   gen T * !off F T' T >-> {gen T' * cont F}.
gen/cont2:  gen T * !off2 F T1 T2 T >-> {gen T1 * gen T2 * cont2 F}.
gen/error:  gen T >-> {error}.
gen/handle: gen T * !of E2 T >-> {gen T * handle E2}.