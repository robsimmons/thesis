ev: exp -> exp -> prop. 
#mode ev + -.

#rule ev/lam: 
ev (lam \x. E x) 
    (lam \x. E x).

#rule ev/app: 
ev (app E1 E2) V

 <- ev E1 (lam \x. E x)

 <- ev E2 V2

 <- ev (E V2) V.