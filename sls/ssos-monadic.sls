bind: variable -> value -> prop pers.
eval: exp -> prop ord.
retn: exp -> prop ord.
cont: (variable -> exp) -> prop ord.

ev/fun:  eval (letcmd L (fun \x. E0 x) \x. E x)
          >-> {Exists y. eval (E y) * bind y (lam \x. E0 x)}.

ev/call: eval (letcmd L (call F X) \x. E x) *
         bind F (lam \x. E0 x) *
         bind X V
          >-> {Exists y. eval (E0 y) * cont (\x. E x)}.

ev/retn: eval (return L X) * cont (\x. E x) *
         bind X V
          >-> {Exists y. eval (E y) * bind y V}.