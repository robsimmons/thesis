#mode value +.
value: exp -> prop.
value/lam: value (lam \x. E x).

#mode step + -.
step: exp -> exp -> prop.

step/app1:   step (app E1 E2) (app E1' E2) 
              <- step E1 E1'.

step/app2:   step (app E1 E2) (app E1 E2') <- value E1
              <- step E2 E2'.

step/appred: step (app (lam \x. E x) V) (E V) <- value V.
