#rule ev/choose1: 
ev (choose E1 E2) V <- ev E1 V.

#rule ev/choose2: 
ev (choose E1 E2) V <- ev E2 V.