#mode casen + + + -.
casen: exp -> exp -> exp -> exp -> prop.
casen/z:  casen zero Ez (\x. Es x) Ez.
casen/s:  casen (succ V') Ez (\x. Es x) (Es V').

ev/case:  eval (case E Ez (\x. Es x))
           >-> {eval E * (All V'. retn V'
                           >-> All E'. casen V' Ez (\x. Es x) E' 
                           -> {eval E'})}.