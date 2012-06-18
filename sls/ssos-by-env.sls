ev/envlam:  eval (envlam \x. E x) >-> {retn (envlam \x. E x)}.

ev/appenv1: retn (envlam \x. E x) * cont (app1 E2)
             >-> {Exists x. eval E2 * cont (app2' x (E x))}.

ev/appenv2: retn V2 * cont (app2' X E)
             >-> {eval E * bind' X V2}.