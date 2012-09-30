gen: prop lin.
ofdest: dest -> typ -> prop pers.
gendest: dest -> dest -> prop lin.

value/contn: value (contn D).

of/letcc: of (letcc \x. E x) Tp
           <- (All x. of x (conttp Tp) -> of (E x) Tp).
of/contn: of (contn D) (conttp Tp)
           <- ofdest D Tp.
of/throw: of (throw E1 E2) Tp'
           <- of E1 Tp
           <- of E2 (conttp Tp).

off/throw1: off (throw1 E2) Tp Tpx
             <- of E2 (conttp Tp).
off/throw2: off (throw2 V1) (conttp Tp) Tpx
             <- of V1 Tp
             <- value V1.

dest/promise: {Exists d'. $gendest d' D * !ofdest d' Tp'}.
dest/fulfill: $gendest D' D * 
              !off F Tp' Tp * !ofdest D' Tp' * !ofdest D Tp
               >-> {!cont F D' D}.

gen/eval: $gen * !ofdest D Tp * !of E Tp >-> {eval E D}.
gen/retn: $gen * !ofdest D Tp * !of V Tp * !value V >-> {retn V D}.
