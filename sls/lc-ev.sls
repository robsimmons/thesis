#mode ev0 + -.
#mode evn + + -.
#mode casen + + + -.

ev0: exp -> exp -> prop.
evn: nat -> exp -> exp -> prop.
var: exp -> prop pers.
casen: exp -> exp -> (exp -> exp) -> exp -> prop.

#| Lambda calculus fragment |#

ev/lam:   ev0 (lam \x. E x) (lam \x. E x).
ev/app:   ev0 (app E1 E2) V
           <- ev0 E1 (lam \x. E x)
           <- ev0 E2 V2
           <- ev0 (E V2) V.

ev/var':  evn N X X <-< var X.
ev/lam':  evn N (lam \x. E x) (lam \x. V x)
           <- (All x. var x >-> evn N (E x) (V x)).
ev/app':  evn N (app E1 E2) (app V1 V2)
           <- evn N E1 V1
           <- evn N E2 V2.


#| Mini-ML fragment |#

ev/fix:   ev0 (fix \x. E x) V
           <- ev0 (E (fix \x. E x)) V.
ev/pair:  ev0 (pair E1 E2) (pair V1 V2)
           <- ev0 E1 V1
           <- ev0 E2 V2.
ev/fst:   ev0 (fst E) V
           <- ev0 E (pair V _).
ev/snd:   ev0 (snd E) V
           <- ev0 E (pair _ V).
ev/zero:  ev0 zero zero.
ev/succ:  ev0 (succ E) (succ V)
           <- ev0 E V.
ev/case:  ev0 (case E Ez \x. Es x) V
           <- ev0 E V'
           <- casen V' Ez (\x. Es x) E'
           <- ev0 E' V. 
casen/z:  casen zero Ez (\x. Es x) Ez.
casen/s:  casen (succ V') Ez (\x. Es x) (Es V').

ev/fix':  evn N (fix \x. E x) (fix \x. V x)
           <- (All x. var x >-> evn N (E x) (V x)).
ev/pair': evn N (pair E1 E2) (pair V1 V2) 
           <- evn N E1 V1
           <- evn N E2 V2.
ev/fst':  evn N (fst E) (fst V)
           <- evn N E V.
ev/snd':  evn N (snd E) (snd V)
           <- evn N E V.
ev/zero': evn N zero zero.
ev/succ': evn N (succ E) (succ V)
           <- evn N E V.
ev/case': evn N (case E Ez \x. Es x) (case V Vz \x. Vs x)
           <- evn N E V
           <- evn N Ez Vz
           <- (All x. var x >-> evn N (Es x) (Vs X)).


#| Temporal fragment |#

ev/next:  ev0 (next E) (next V)
           <- evn z E V.

ev/next': evn N (next E) (next V)
           <- evn (s N) E V.

ev/prev:  evn z (prev E) V
           <- ev0 E (next V).

ev/prev': evn (s N) (prev E) (prev V)
           <- evn N E V.
            