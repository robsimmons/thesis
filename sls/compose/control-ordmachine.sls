handle: (exp -> exp) -> prop ord.
error: exp -> prop ord.

raise1: frame.

ev/raise:   eval (raise E) >-> {eval E * cont raise1}.

ev/raise1:  retn V * cont raise1 >-> {error V}.

ev/try:     eval (try E1 (\x. E2 x)) 
             >-> {eval E1 * handle (\x. E2 x)}.

error/cont: error V * cont F >-> {error V}.

error/hand: error V * handle (\x. E2 x) >-> {eval (E2 V)}.

retn/hand:  retn V * handle (\x. E2 x) >-> {retn V}.