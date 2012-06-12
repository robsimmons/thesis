ev/casez: eval (case E Ez (\x. Es x)) 
           >-> {eval E * (retn zero >-> {eval Ez})}.

ev/cases: eval (case E Ez (\x. Es x)) 
           >-> {eval E * (All V'. retn (succ V') >-> {eval (Es V')})}.
