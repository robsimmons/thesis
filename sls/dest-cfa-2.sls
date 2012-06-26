bind: exp -> exp -> prop pers.
eval: exp -> prop pers.
retn: exp -> exp -> prop pers.
cont: frame -> exp -> exp -> prop pers.

ev/bind: eval X * bind X V >-> {retn V X}.

ev/lam:  eval (lam \x. E x) >-> {retn (lam \x. E x) (lam \x. E x)}.

ev/app:  eval (app E1 E2) D * E == app E1 E2
          >-> {eval E1 * cont (app1 E2) E1 (app E1 E2)}.

ev/app1: retn (lam \x. E x) D1 * cont (app1 E2) D1 D
          >-> {Exists d2. eval E2 d2 * cont (app2 \x. E x) d2 D * 
               d2 == E2}.

ev/app2: retn V2 D2 * cont (app2 \x. E x) D2 D
          >-> {Exists x. bind x V * x == var (\x. E x) *
               Exists d3. eval (E x) d3 D * cont app3 d3 D * 
               d3 == E x}.

ev/app3: retn V D3 * cont app3 D3 D >-> {retn V D}.