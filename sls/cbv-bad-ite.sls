#rule ev/true: eval true >-> {retn true}.
#rule ev/false: eval false >-> {retn false}.

#rule ev/ite/true: 
eval (ite E Et Ef) >-> {eval E * (retn true >-> {eval Et})}.

#rule ev/ite/false: 
eval (ite E Et Ef) >-> {eval E * (retn false >-> {eval Ef})}.