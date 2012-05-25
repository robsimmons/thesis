eval: exp -> exp -> prop ord. 
retn: exp -> exp -> prop ord. 

ev/lam:  eval (lam \x. E x)  
          >-> {retn (lam \x. E x)}.

ev/app:  eval (app E1 E2)   
          >-> {eval E1 * cont (app1 E2)}.

ev/app1: retn (lam \x. E x) * cont (app1 E2) 
          >-> {eval E2 * cont (app2 \x. E x)}.

ev/app2: retn V2 * cont (app2 \x. E x)
          >-> {eval (E V2)}.