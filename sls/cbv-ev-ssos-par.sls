eval: exp -> prop ord. 
retn: exp -> prop ord. 

#rule ev/lam: eval (lam \x. E x) >-> {retn (lam \x. E x)}.

#rule ev/app: eval (app E1 E2) 
         >-> {eval E1 * eval E2 *
              (All E. All V2. retn (lam \x. E x) * retn V2
                >-> {eval (E V2)})}. 