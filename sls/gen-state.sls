ofcell: mutable_loc -> typ -> prop pers.
gencell: mutable_loc -> typ -> prop lin.

of/loc: of (loc L) (ref T)
         <- ofcell L T.
of/ref: of (ref E) (ref T)
         <- of E T.
of/get: of (get E) T
         <- of E (ref T).
of/set: of (set E1 E2) unittp
         <- of E1 (ref T)
         <- of E2 T.

off/ref1: off ref1 T (ref T). 
off/get1: off get1 (ref T) T.
off/set1: off (set1 E) (ref T) unittp
           <- of E T.
off/set2: off (set2 L) T unittp
           <- ofcell L T.

gencell/promise: {Exists l. !ofcell l T * $gencell l T}.
gencell/fulfill: $gencell L T * !of V T * !value V >-> {$cell L V}.