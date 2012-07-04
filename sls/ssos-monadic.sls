bind: variable -> value -> prop pers.
eval: cmd -> prop ord.
retn: value -> prop ord.
cont: frame -> prop ord.

ev/ret:   eval (ret X) * bind X V >-> {retn V}.

ev/fun:   eval (bnd L (fun \x. M0 x) (\x. M x))
           >-> {Exists y. eval (M y) * bind y (lam L \x. M0 x)}.

ev/call:  eval (bnd L (call F X) (\x. M x)) *
          bind F (lam L0 (\x. M0 x)) *
          bind X V
           >-> {Exists y. eval (M0 y) * cont (call1 L (\x. M x)) * 
                bind y V}.

ev/call1: retn V * cont (call1 L (\x. E x))
           >-> {Exists y. eval (E y) * bind y V}.