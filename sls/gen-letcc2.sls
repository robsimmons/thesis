gen: prop lin.
ofdest: 
gendest: dest -> dest -> prop lin.

value/contn: value (contn D).

of/letcc: of (letcc \x. E x) T
           <- (All x. of x (conttp T) -> of (E x) T).
of/contn: of (contn D) (conttp T)
           <- ofdest D T.
of/throw: of (throw E1 E2) T'
           <- of E1 T
           <- of E2 (conttp T).

off/throw1: off (throw1 E2) T Tx
             <- of E2 (conttp T).
off/throw2: off (throw2 V1) (conttp T) Tx
             <- of V1 T
             <- value V1.

dest/promise: {Exists d'. $gendest d' D * !ofdest d' T'}.
dest/fulfill: $gendest D' D * !off F T' T * !ofdest D' T' * !ofdest D T
               >-> {!cont F D' D}.

gen/eval: $gen * !ofdest D T * !of E T >-> {eval E D}.
gen/retn: $gen * !ofdest D T * !of V T * !value V >-> {retn V D}.
