off: frame -> typ -> typ -> prop.
off/let1: off (let1 \x. E' x) Tp' Tp
           <- (All x. of x Tp' -> of (E' x) Tp).

off2: frame -> typ -> typ -> typ -> prop.
off2/app1:  off2 app1 (arr Tp' Tp) Tp' Tp. 

gen: typ -> prop ord.
gen/eval:   gen Tp * !of E Tp >-> {eval E}.
gen/retn:   gen Tp * !of V Tp * !value V >-> {retn V}.
gen/cont:   gen Tp * !off F Tp' Tp >-> {gen Tp' * cont F}.
gen/cont2:  gen Tp * !off2 F Tp1 Tp2 Tp
             >-> {gen Tp1 * gen Tp2 * cont2 F}.
gen/error:  gen Tp >-> {error}.
gen/handle: gen Tp * !of E2 Tp >-> {gen Tp * handle E2}.