ev/next:  
eval (next E) * !evn (s z) E V
 >-> {retn (next V)}.

evn/next: 
evn N (next E) (next V) 
 <- evn (s N) E V.

ev/prev:  
evn (s z) (prev E) V 
 <- (eval E >-> {retn (next V)}).

evn/prev: 
evn (s (s N)) (prev E) (prev V)
 <- evn (s N) E V.
