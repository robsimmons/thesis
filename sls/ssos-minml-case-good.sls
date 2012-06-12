#mode selectn + + + -.
selectn: exp -> exp -> (exp -> exp) -> exp -> prop.
selectn/z:  selectn zero Ez (\x. Es x) Ez.
selectn/s:  selectn (succ V') Ez (\x. Es x) (Es V').

ev/case:  eval (case E Ez (\x. Es x))
           >-> {eval E * (All V'. retn V'
                           >-> All E'. selectn V' Ez (\x. Es x) E' 
                           -> {eval E'})}.