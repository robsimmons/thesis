gen: typ -> dest -> prop pers.

gen/eval: gen D >-> {eval E D}.
gen/retn: gen D * !value V >-> {retn V D}.
gen/cont: gen D >-> {Exists d'. gen T' d' * !cont F d' D}.
gen/dest: {Exists d'. !cont F d' D}.