of: exp -> typ -> prop.

of/unit:  of unit unittp.
of/lam:   of (lam \x. E x) (arr T' T)
           <- (All x. of x T' -> of (E x) T).
of/app:   of (app E1 E2) T
           <- of E1 (arr T' T)
           <- of E2 T'.
of/fail:  of fail T.
of/catch: of (catch E1 E2) T
           <- of E1 T
           <- of E2 T.