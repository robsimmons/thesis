ofcell: mutable_loc -> typ -> prop pers.
gencell: mutable_loc -> prop lin.

value/loc: value (loc L).

of/loc: of (loc L) (reftp Tp)
         <- ofcell L Tp.
of/ref: of (ref E) (reftp Tp)
         <- of E Tp.
of/get: of (get E) Tp
         <- of E (reftp Tp).
of/set: of (set E1 E2) unittp
         <- of E1 (reftp Tp)
         <- of E2 Tp.

off/ref1: off ref1 Tp (reftp Tp). 
off/get1: off get1 (reftp Tp) Tp.
off/set1: off (set1 E) (reftp Tp) unittp
           <- of E Tp.
off/set2: off (set2 L) Tp unittp
           <- ofcell L Tp.

gencell/promise: {Exists l. !ofcell l Tp * $gencell l}.
gencell/fulfill: $gencell L * !ofcell L Tp * !of V Tp * !value V 
                  >-> {$cell L V}.