ev/true: eval true >-> {retn true}.
ev/false: eval false >-> {retn false}.

ev/ite/true: 
eval (ite E Et Ef) >-> {eval E * (retn true >-> {eval Et})}.

ev/ite/false: 
eval (ite E Et Ef) >-> {eval E * (retn false >-> {eval Ef})}.