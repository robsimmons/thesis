ev/case:  eval (case E Ez (\x. Es x)) 
           >-> {eval E * 
                (All V'. retn V' >-> {casen V' Ez (\x. Es x)})}.

casen/z:  casen zero Ez (\x. Es x) >-> {eval Ez}.
casen/s:  casen (succ V') Ez (\x. Es x) >-> {eval (Es V')}.
