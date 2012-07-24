value: exp -> prop.
value/lam: value (lam \x. E x).

gen: prop ord.
gen/eval: gen >-> {eval E}.
gen/retn: gen * !value V >-> {retn V}.
gen/cont: gen >-> {gen * cont F}.