step: exp -> exp -> prop.
#mode step + -.

#rule step/app1: 
step (app E1 E2) (app E1' E2)
 <- step E1 E2.



#rule step/app2: 
step (app E1 E2) (app E1 E2')
 <- value E1
 <- step E2 E2'.


#rule step/appred:
step (app (lam \x. E x) V) (E V)
 <- value V.