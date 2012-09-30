of: exp -> typ -> prop.

of/unit:  of unit unittp.
of/lam:   of (lam \x. E x) (arr Tp' Tp)
           <- (All x. of x Tp' -> of (E x) Tp).
of/app:   of (app E1 E2) Tp
           <- of E1 (arr Tp' Tp)
           <- of E2 Tp'.
of/fail:  of fail Tp.
of/catch: of (catch E1 E2) Tp
           <- of E1 Tp
           <- of E2 Tp.