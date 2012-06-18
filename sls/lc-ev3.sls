ev/next:  
ev (next E) (next E')
 <- evn (s z) E E'.

evn/next: 
evn N (next E) (next E')
 <- evn (s N) E E'.

ev/prev:  
evn (s z) (prev E) E'
 <- ev E (next E').

evn/prev: 
evn (s (s N)) (prev E) (prev E')
 <- evn (s N) E E'.