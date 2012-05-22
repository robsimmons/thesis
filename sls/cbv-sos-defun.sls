frame: type.
cont: frame -> prop ord.

app1: exp -> frame.
step/app1: eval (app E1 E2) >-> {eval E1 * cont (app1 E2)}.
step/app1/1: retn E1 * cont (app1 E2) >-> {retn E2}.

app2: exp -> frame.
step/app2: eval (app E1 E2) * !value E1 
            >-> {eval E2 * cont (app2 E1)}.
step/app2/1: retn E2' * cont (app2 E1) >-> {retn (app E1 E2')}.

step/appred: eval (app (lam \x. E x) V) * !value V >-> {retn (E V)}.