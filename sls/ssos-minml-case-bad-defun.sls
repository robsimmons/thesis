ev/casez:  eval (case E Ez (\x. Es x)) 
            >-> {eval E * cont (casez Ez)}.
ev/casez1: retn zero * cont (casez Ez)
            >-> {eval Ez}.

ev/cases:  eval (case E Ez (\x. Es x)) 
            >-> {eval E * cont (cases \x. Es x)}.
ev/cases1: retn (succ V) * cont (cases \x. Es x)
            >-> {eval (Es V)}.