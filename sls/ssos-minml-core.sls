ev/fix:   eval (fix (\x. E x)) 
           >-> {eval (E (fix (\x. E x)))}.

ev/unit:  eval unit unit.

ev/pair:  eval (pair E1 E2)
           >-> {eval E1 * eval E2 * cont pair1}.
ev/pair1: retn V1 * retn V2 * cont pair1
           >-> {retn (pair V1 V2)}.

ev/fst:   eval (fst E) >-> {eval E * cont fst1}.
ev/fst1:  retn (pair E1 E2) * cont fst1 >-> retn E1.

ev/snd:   eval (snd E) >-> {eval E * cont snd1}.
ev/snd1:  retn (pair E1 E2) * cont snd1 >-> retn E2.

ev/zero:  eval zero >-> {retn zero}.

ev/succ:  eval (succ E) >-> {eval E * cont succ1}.
ev/succ1: retn V * cont succ1 >-> retn (succ V).