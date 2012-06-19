bind: exp -> exp -> prop pers.    ; Future is complete
promise: dest -> exp -> prop lin. ; Future is waiting on a value

ev/bind:    eval X D * bind X V >-> {retn V D}.
#| WAITING: eval X D * promise Dfuture X >-> ??? |#
ev/promise: retn V D * promise D X >-> {bind X V}.

ev/flam:    eval (flam \x. E x) D >-> {retn (flam \x. E x) D}.

ev/fapp1:   retn (flam \x. E x) D1 * cont (app1 E2) D1 D
             >-> {Exists x. eval (E x) D *
                  Exists dfuture. eval E2 dfuture *
                  promise dfuture x}.