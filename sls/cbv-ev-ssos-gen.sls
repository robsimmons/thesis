gen: prop ord.

gen/eval: gen >-> {eval E}.
gen/retn: gen >-> {retn E}.
gen/cont: gen >-> {cont F * gen}.