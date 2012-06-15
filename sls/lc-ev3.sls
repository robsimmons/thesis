ev/next:  
ev (next E) (next V)
 <- evn (s z) E V.

evn/next: 
evn N (next E) (next V)
 <- evn (s N) E V.

ev/prev:  
evn (s z) (prev E) V
 <- ev E (next V).

evn/prev: 
evn (s (s N)) (prev E) (prev V)
 <- evn (s N) E V.