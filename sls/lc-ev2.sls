#mode fvar -.
fvar: exp -> prop.

#mode evn + + -.
evn: nat -> exp -> exp -> prop.

evn/var:  evn N X X <- fvar X.
evn/lam:  evn N (lam \x. E x) (lam \x. E' x)
           <- (All x. fvar x -> evn N (E x) (E' x)).
evn/app:  evn N (app E1 E2) (app E1' E2')
           <- evn N E1 E1'
           <- evn N E2 E2'.