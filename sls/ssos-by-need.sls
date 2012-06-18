susp': exp -> exp -> prop lin.
blackhole': exp -> prop lin.
bind': exp -> exp -> prop pers.

ev/lazylam: eval (lazylam \x. E x) >-> {retn (lazylam \x. E x)}.

ev/applazy: retn (lazylam \x. E x) * cont (app1 E2)
             >-> {Exists x:exp. eval (E x) * susp' x E2}.

ev/susp':   eval X * susp' X E 
             >-> {blackhole' X * eval E * cont (bind1' E)}.

ev/susp1':  retn V * cont (bind1' X) * blackhole' X
             >-> {retn V * bind' X V}.

ev/bind':   eval E * bind' E V >-> {retn V}.