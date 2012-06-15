value: type.
value/lam: value (lam \x. E x).

decomp: exp -> prop ord.
plug: exp -> prop ord.

step/app1:
decomp (app E1 E2)
 >-> {decomp E1 * cont (ap1 E2)}.

step/app1/1:
plug E1' * cont (ap1 E2)
 >-> {plug (app E1' E2)}.

step/app2:
decomp (app E1 E2) * !value V1
 >-> {decomp E2 * cont (ap2 V1)}.

step/app2/1: 
plug E2' * cont (ap2 E2)
 >-> {plug (app E1 E2')}.

step/appred:
decomp (app (lam \x. E x) V) * 
!value V
 >-> {plug (E V)}.

ev: exp -> exp -> prop.

ev/steps:
ev E V
 <- (decomp E >-> {plug E'})
 <- ev E' V.

ev/value:
ev V V <- value V.