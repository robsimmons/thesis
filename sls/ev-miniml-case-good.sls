#mode selectn + + + -.
selectn: exp -> exp -> (exp -> exp) -> exp -> prop.
selectn/z:  selectn zero Ez (\x. Es x) Ez.
selectn/s:  selectn (succ V') Ez (\x. Es x) (Es V').

ev/case:  ev (case E Ez (\x. Es x)) V
           <- ev E V'
           <- selectn V' Ez (\x. Es x) E'
           <- ev E' V.
