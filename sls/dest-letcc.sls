eval: exp -> dest -> prop lin.
retn: exp -> dest -> prop lin.
cont: frame -> dest -> dest -> prop pers.

ev/cont:   eval (contn DK) D >-> {retn (contn DK) D}.

ev/letcc:  eval (letcc \x. E x) D >-> {eval (E (contn D)) D}.

ev/throw:  eval (throw E1 E2) D 
            >-> {Exists d1. eval E1 d1 * cont (throw1 E2) d1 D}.
ev/throw1: retn V1 D1 * cont (throw1 E2) D1 D
            >-> {Exists d2. eval E1 d2 * cont (throw2 V1) d2 D}.
ev/throw2: retn (contn DK) D2 * cont (throw2 V1) D2 D
            >-> {retn V1 DK}.