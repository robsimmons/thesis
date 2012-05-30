value: exp -> prop.
value/lam: value (lam \x. E x).

step: exp -> exp -> prop.


step/app1: 
step (app E1 E2) (app E1' E2)
 <- step E1 E2.



step/app2: 
step (app E1 E2) (app E1 E2')
 <- value E1
 <- step E2 E2'.


step/appred:
step (app (lam \x. E x) V) (E V)
 <- value V.


ev: exp -> exp -> prop.

ev/steps:
ev E V
 <- step E E'
 <- ev E' V.

ev/value:
ev V V <- value V.
