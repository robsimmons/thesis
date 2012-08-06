#mode ev + -.
ev: exp -> exp -> prop.

ev/fix:   ev (fix \x. E x) V
           <- ev (E (fix \x. E x)) V.
ev/unit:  ev unit unit.
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