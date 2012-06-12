ev/case:  eval (case E Ez (\x. Es x))
           >-> {eval E * cont (case1 Ez \x. Es x)}.
ev/case1: retn V' * cont (case1 Ez \x. Es x) * 
          !selectn V' Ez (\x. Es x) E'
           >-> {eval E'}.