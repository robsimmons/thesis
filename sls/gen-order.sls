value: exp -> prop.
value/unit: value unit.
value/lam: value (lam \x. E x).

okf: frame -> prop.
okf/let1: okf (let1 \x. E' x).

okf2: frame -> prop.
okf2/app1: okf2 app1. 

gen: prop ord.
gen/eval:   gen >-> {eval E}.
gen/retn:   gen * !value V >-> {retn V}.
gen/cont:   gen * !okf F >-> {gen * cont F}.
gen/cont2:  gen * !okf2 F >-> {gen * gen * cont2 F}.
gen/error:  gen >-> {error}.
gen/handle: gen >-> {gen * handle E2}.