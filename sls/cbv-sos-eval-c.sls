decomp: exp -> prop ord.
plug: exp -> prop ord.

#| Reduction rules |#
step/appred: decomp (app (lam \x. E x) V) * !value V
              >-> {plug (E V)}.

#| Decomposing a term into an evaluation context |#
step/app1:   decomp (app E1 E2) 
              >-> {decomp E1 * cont (ap1 E2)}.
step/app2:   decomp (app V1 E2) * !value V1
              >-> {decomp E2 * cont (ap2 V1)}.

#| Reconstituting a term from an evaluation context |#
step/app1/1: plug E1' * cont (ap1 E2) 
              >-> {plug (app E1' E2)}.
step/app2/1: plug E2' * cont (ap2 E1) 
              >-> {plug (app E1 E2')}.

evsos: exp -> exp -> prop.

evsos/steps: evsos E V
              <- (decomp E >-> {plug E'})
              <- evsos E' V.

evsos/value: evsos V V <- value V.