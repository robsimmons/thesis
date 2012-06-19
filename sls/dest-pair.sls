cont2: frame -> dest -> dest -> dest -> prop lin.

ev/pair:  eval (pair E1 E2) D
           >-> {Exists d1. Exists d2. 
                eval E1 d1 * eval E2 d2 * cont2 pair1 d1 d2 D}.

ev/pair1: retn V1 D1 * retn V2 D2 * cont2 pair1 D1 D2 D
           >-> {retn (pair V1 V2) D.