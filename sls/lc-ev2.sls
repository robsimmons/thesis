#mode var -.
var: exp -> prop.

#mode evn + + -.
evn: nat -> exp -> exp -> prop.

evn/var:  evn N X X <- var X.
evn/lam:  evn N (lam \x. E x) (lam \x. E' x)
           <- (All x. var x -> evn N (E x) (E' x)).
evn/app:  evn N (app E1 E2) (app E1' E2')
           <- evn N E1 E1'
           <- evn N E2 E2'.