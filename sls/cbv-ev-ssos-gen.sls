gen: prop ord.
gen/eval: gen >-> {eval E}.
gen/retn: gen >-> {retn V}.

gen/cont: gen >-> {gen * cont F}.