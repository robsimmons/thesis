bind: exp -> exp -> prop pers.
eval: exp -> prop pers.
retn: exp -> exp -> prop pers.
cont: frame -> exp -> exp -> prop pers.

ev/bind: eval X * bind X V >-> {retn V X}.

ev/lam:  eval (lam \x. E x) >-> {retn (lam \x. E x) (lam \x. E x)}.

ev/app:  eval (app E1 E2) * E == app E1 E2
          >-> {eval E1 * cont (app1 E2) E1 E}.

ev/app1: retn (lam \x. E0 x) E1 * cont (app1 E2) E1 E
          >-> {eval E2 * cont (app2 \x. E0 x) E2 E}.

ev/app2: retn V2 E2 * cont (app2 \x. E0 x) E2 E
          >-> {Exists x. bind x V *
               eval (E0 x) * cont app3 (E0 x) E *
               x == var (\x. E0 x)}.

ev/app3: retn V E3 * cont app3 E3 E >-> {retn V E}.