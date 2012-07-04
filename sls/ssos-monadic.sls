bind: variable -> value -> prop pers.
eval: cmd -> dest -> prop lin.
retn: value -> dest -> prop lin.
cont: frame -> dest -> dest -> prop lin.

ev/ret:   eval (ret X) D * bind X V >-> {retn V D}.

ev/fun:   eval (bnd L (fun \x. M0 x) (\x. M x)) D
           >-> {Exists y. eval (M y) D * bind y (lam L \x. M0 x)}.

ev/call:  eval (bnd L (call F X) (\x. M x)) D *
          bind F (lam L0 (\x. M0 x)) *
          bind X V
           >-> {Exists d0. Exists y. 
                eval (M0 y) d0 * cont (call1 L (\x. M x)) d0 D * 
                bind y V}.

ev/call1: retn V D0 * cont (call1 L (\x. M x)) D0 D
           >-> {Exists y. eval (M y) D * bind y V}.