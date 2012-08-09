channel: type.
spawn: exp -> exp.                       ; spawn e
exit: exp.                               ; exit.
newch: exp.                              ; channel
chan: channel -> exp.                    ; (no concrete syntax)
sync: exp -> exp.                        ; sync e
send: exp -> exp -> exp.                 ; sync c e
recv: exp -> exp.                        ; recv c
always: exp -> exp.                      ; always e
choose: exp -> exp -> exp.               ; e1 + e2
never: exp.                              ; 0 
wrap: exp -> (exp -> exp) -> exp.        ; wrap e in x.e'