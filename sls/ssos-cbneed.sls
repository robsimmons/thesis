susp: bind_loc -> (exp -> exp) -> prop lin.
blackhole: bind_loc -> prop lin.
bind: bind_loc -> exp -> prop pers.

ev/susp:    eval (issusp L) >-> {retn (issusp L)}.

ev/thunk:   eval (thunk \x. E x)
             >-> {Exists l. susp l (\x. E x) * retn (issusp l)}.

ev/force:   eval (force E) 
             >-> {eval E * cont force1}.

ev/force1a: retn (issusp L) * cont force1 * susp L (\x. E' x) 
             >-> {eval (E' (issusp L)) * cont (bind1 L) * blackhole L}.

ev/force2a: retn V * cont (bind1 L) * blackhole L
             >-> {retn V * bind L V}.

#| STUCK -  retn (issusp L) * cont force1 * blackhole L >-> ??? |#

ev/force1b: retn (issusp L) * cont force1 * bind L V
             >-> {retn V}.

