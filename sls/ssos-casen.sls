ev/case:  eval (case E Ez (\x. Es x)) 
           >-> {eval E * cont (case1 Ez (\x. Es x))}.

ev/case1: retn V' * cont (case1 Ez (\x. Es x))
           >-> {casen V' Ez (\x. Es x)}.

casen/z:  casen zero Ez (\x. Es x) >-> {eval Ez}.
casen/s:  casen (succ V') Ez (\x. Es x) >-> {eval (Es V')}.
