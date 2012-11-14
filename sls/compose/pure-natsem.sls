#mode ev + -.
ev: exp -> exp -> prop.

ev/lam:   ev (lam \x. E x) (lam \x. E x).

ev/app:   ev (app E1 E2) V 
           <- ev E1 (lam \x. E x)
           <- ev E2 V2
           <- ev (E V2) V.

ev/fix:   ev (fix \x. E x) V
           <- ev (E (fix \x. E x)) V.

ev/true:  ev true true.

ev/false: ev false false. 

#mode caseb + + + -.
caseb: exp -> exp -> exp -> exp -> prop.

ev/ite:   ev (ite E Et Ef) V
           <- ev E V'
           <- caseb V' Et Ef V.

case/t:   caseb true Et Ef V 
           <- ev Et V.

case/f:   caseb false Et Ef V 
           <- ev Et V.

ev/zero:  ev zero zero.

ev/succ:  ev (succ E) (succ V)
           <- ev E V.

#mode casen + + + -.
casen: exp -> exp -> (exp -> exp) -> exp -> prop.

ev/case:  ev (case E Ez \x. Es x) V
           <- ev E V'
           <- casen V' Ez (\x. Es x) V.

case/z:   casen zero Ez (\x. Es x) V
           <- ev Ez V.

case/s:   casen (succ V) Ez (\x. Es x) V
           <- ev (Es V) V.

ev/unit:  ev unit unit.

ev/pair:  ev (pair E1 E2) (pair V1 V2)
           <- ev E1 V1
           <- ev E2 V2.

ev/fst:   ev (fst E) V1
           <- ev E (pair V1 V2).

ev/snd:   ev (snd E) V2
           <- ev E (pair V1 V2).

ev/arb1:  ev (arb E1 E2) V
           <- ev E1 V.

ev/arb2:  ev (arb E1 E2) V
           <- ev E2 V.