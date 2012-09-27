ofcell: mutable_loc -> typ -> prop pers.
gencell: mutable_loc -> prop lin.

value/loc: value (loc L).

of/loc: of (loc L) (reftp T)
         <- ofcell L T.
of/ref: of (ref E) (reftp T)
         <- of E T.
of/get: of (get E) T
         <- of E (reftp T).
of/set: of (set E1 E2) unittp
         <- of E1 (reftp T)
         <- of E2 T.

off/ref1: off ref1 T (reftp T). 
off/get1: off get1 (reftp T) T.
off/set1: off (set1 E) (reftp T) unittp
           <- of E T.
off/set2: off (set2 L) T unittp
           <- ofcell L T.

gencell/promise: {Exists l. !ofcell l T * $gencell l}.
gencell/fulfill: $gencell L * !ofcell L T * !of V T * !value V 
                  >-> {$cell L V}.