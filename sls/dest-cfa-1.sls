bind: exp -> exp -> prop pers.
eval: exp -> exp -> prop pers.
retn: exp -> exp -> prop pers.
cont: frame -> exp -> exp -> prop pers.

ev/bind: eval X D * bind X V >-> {retn V D}.

ev/lam:  eval (lam \x. E x) D >-> {retn (lam \x. E x) D}.

ev/app:  eval (app E1 E2) D 
          >-> {Exists d1. eval E1 d1 * cont (app1 E2) d1 D * 
               d1 == E1}.

ev/app1: retn (lam \x. E x) D1 * cont (app1 E2) D1 D
          >-> {Exists d2. eval E2 d2 * cont (app2 \x. E x) d2 D * 
               d2 == E2}.

ev/app2: retn V2 D2 * cont (app2 \x. E x) D2 D
          >-> {Exists x. bind x V * 
               Exists d3. eval (E x) d3 * cont app3 d3 D * 
               x == var (\x. E x) *
               d3 == E x}.

ev/app3: retn V D3 * cont app3 D3 D >-> {retn V D}.