frame: type.
cont: frame -> prop ord.
eval: exp -> prop ord. 
retn: exp -> prop ord. 

app1: exp -> frame.
app2: (exp -> exp) -> frame.

#rule ev/lam:  eval (lam \x. E x)  
          >-> {retn (lam \x. E x)}.

#rule ev/app:  eval (app E1 E2)   
          >-> {eval E1 * cont (app1 E2)}.

#rule ev/app1: retn (lam \x. E x) * cont (app1 E2) 
          >-> {eval E2 * cont (app2 \x. E x)}.

#rule ev/app2: retn V2 * cont (app2 \x. E x)
          >-> {eval (E V2)}.