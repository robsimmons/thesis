eval: exp -> dest -> dest -> prop lin.
retn: exp -> dest -> dest -> prop lin.
cont: frame -> dest -> dest -> prop lin.

ev/lam:  eval (lam \x. E x) D' D >-> {retn (lam \x. E x) D' D}.

ev/app:  eval (app E1 E2) D' D 
          >-> {Exists d1. eval E1 D' d1 * cont (app1 E2) d1 D}.

ev/app1: retn (lam \x. E x) D' D1 * cont (app1 E2) D1 D
          >-> {Exists d2. eval E2 D' d2 * cont (app2 \x. E x) d2 D}.

ev/app2: retn V2 D' D2 * cont (app2 \x. E x) D2 D
          >-> {eval (E V2) D' D}.