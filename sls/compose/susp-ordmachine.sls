susp: bind_loc -> (exp -> exp) -> prop lin.
blackhole: bind_loc -> prop lin.
bind: bind_loc -> exp -> prop pers.

force1: frame.
bind1: bind_loc -> frame.

ev/susp:       eval (issusp L) >-> {retn (issusp L)}.

ev/thunk:      eval (thunk \x. E x) 
                >-> {Exists l. $susp l (\x. E x) * retn (issusp l)}.

ev/force:      eval (force E) >-> {eval E * cont force1}.

ev/suspended1: retn (issusp L) * cont force1 * $susp L (\x. E' x)
                >-> {eval (E' (issusp L)) * cont (bind1 L) * $blackhole L}.

ev/suspended2: retn V * cont (bind1 L) * $blackhole L 
                >-> {retn V * !bind L V}.

ev/memoized:   retn (issusp L) * cont force1 * !bind L V 
                >-> {retn V}.