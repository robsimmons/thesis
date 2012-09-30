off/app1: off app1 Tp (app1 E) (arr Tp' Tp) Tp
           <- of E Tp'.
off/app2: off (app2 \x. E x) Tp' Tp
           <- (All x. of x Tp' -> of (E x) Tp).