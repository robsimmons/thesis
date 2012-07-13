#mode ev + -.
#mode evn + + -.
#mode casen + + + -.

ev: exp -> exp -> prop.
evn: nat -> exp -> exp -> prop.
var: exp -> prop pers.
casen: exp -> exp -> (exp -> exp) -> exp -> prop.

#| Lambda calculus fragment |#

ev/lam:   ev (lam \x. E x) (lam \x. E x).
ev/app:   ev (app E1 E2) V
           <- ev E1 (lam \x. E x)
           <- ev E2 V2
           <- ev (E V2) V.

ev/var':  evn N X X <-< var X.
ev/lam':  evn N (lam \x. E x) (lam \x. V x)
           <- (All x. var x >-> evn N (E x) (V x)).
ev/app':  evn N (app E1 E2) (app V1 V2)
           <- evn N E1 V1
           <- evn N E2 V2.


#| Mini-ML fragment |#

ev/fix:   ev (fix \x. E x) V
           <- ev (E (fix \x. E x)) V.
ev/pair:  ev (pair E1 E2) (pair V1 V2)
           <- ev E1 V1
           <- ev E2 V2.
ev/fst:   ev (fst E) V
           <- ev E (pair V _).
ev/snd:   ev (snd E) V
           <- ev E (pair _ V).
ev/zero:  ev zero zero.
ev/succ:  ev (succ E) (succ V)
           <- ev E V.
ev/case:  ev (case E Ez \x. Es x) V
           <- ev E V'
           <- casen V' Ez (\x. Es x) E'
           <- ev E' V. 
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

ev/next:  ev (next E) (next V)
           <- evn z E V.

ev/next': evn N (next E) (next V)
           <- evn (s N) E V.

ev/prev:  evn z (prev E) V
           <- ev E (next V).

ev/prev': evn (s N) (prev E) (prev V)
           <- evn N E V.
            