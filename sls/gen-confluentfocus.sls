gen: prop lin.

gen/stable: {hyp A-}.
gen/susp: {lsusp A+}.
gen/rfoc: gen >-> {one}.
gen/lfoc: gen >-> {lfoc A+}.
gen/inv2: gen >-> {geninv N * invs N}.

geninv/z: geninv z >-> {one}.
geninv/s: geninv (s N) >-> {linv A- * geninv N}.