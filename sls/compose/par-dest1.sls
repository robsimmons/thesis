cont2: frame -> dest -> dest -> dest -> prop lin. 

letpar: exp -> exp -> (exp -> exp -> exp) -> exp.
letpar1: (exp -> exp -> exp) -> frame.

ev/letpar:  eval (letpar E1 E2 \x. \y. E x y) D
             >-> {Exists d1. eval E1 d1 *
                  Exists d2. eval E2 d2 * 
                  cont2 (letpar1 \x. \y. E x y) d1 d2 D}.

ev/letpar1: retn V1 D1 * retn V2 D2 *
            cont2 (letpar1 \x. \y. E x y) D1 D2 D
             >-> {eval (E V1 V2) D}.