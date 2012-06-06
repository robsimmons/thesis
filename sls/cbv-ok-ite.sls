pick: exp -> exp -> exp -> exp -> prop.
#mode pick + + + -.

pick/true: pick true Et Ef Et.
pick/false: pick false Et Ef Et.

ev/true: eval true >-> {retn true}.
ev/false: eval false >-> {retn false}.

ev/ite: eval (ite E Et Ef) 
         >-> {eval E * 
              (retn V >-> All E'. !pick V Et Ef E' >-> {eval E'})}.