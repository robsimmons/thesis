#mode var -.
var: exp -> prop.

#mode evn + + -.
evn: nat -> exp -> exp -> prop.

evn/var:  evn N X X <- var X.
evn/lam:  evn N (lam \x. E x) (lam \x. V x)
           <- (All x. var x -> evn N (E x) (V x)).
evn/app:  evn N (app E1 E2) (app V1 V2)
           <- evn N E1 V1
           <- evn N E2 V2.