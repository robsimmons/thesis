eval: exp -> exp -> prop ord. 
retn: exp -> exp -> prop ord. 

ev/lam: 
eval (lam \x. E x) 
 >-> {retn (lam \x. E x)}.

ev/app: 
eval (app E1 E2) 
 >-> {eval E1 *
      (All E. retn (lam \x. E x) 
        >-> {eval E2 * 
             (All V2. retn V2
               >-> {eval (E V2) *
                    (All V. retn V
                      >-> {retn V})})})}.