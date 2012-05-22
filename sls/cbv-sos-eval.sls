value: type.
value/lam: value (lam \x. E x).

eval: exp -> prop ord.
retn: exp -> prop ord.

step/app1:
eval (app E1 E2)
 >-> {eval E1 * 
      (All E1'. retn E1' 
        >-> {retn (app E1' E2)}.

step/app2:
eval (app E1 E2) * !value E1
 >-> {eval E1 *
      (All E2'. retn E2'
        >-> {retn (app E1 E2')})}.

step/appred:
eval (app (lam \x. E x) V) * 
!value V
 >-> {retn (E V)}.

ev: exp -> exp -> prop.

ev/steps:
ev E V
 <- (eval E >-> {retn E'})
 <- ev E' V.

ev/steps:
ev V V <- value V.