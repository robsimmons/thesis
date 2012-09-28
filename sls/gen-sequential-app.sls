off/app1: off app1 T (app1 E) (arr T' T) T
           <- of E T'.
off/app2: off (app2 \x. E x) T' T
           <- (All x. of x T' -> of (E x) T).