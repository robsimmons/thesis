bind: label -> value -> prop pers.
eval: cmd -> label -> prop pers.
retn: value -> label -> prop pers.
cont: frame -> label -> label -> prop pers.
cell: label -> field -> value -> prop pers.

ev/ret:   eval (ret X) D * bind X V >-> {retn V D}.

ev/fun:   eval (bnd L (fun \x. E0 x) (\x. E x)) D
           >-> {eval (E L) D * bind L (lam L \x. E0 x)}.

ev/call:  eval (bnd L (call F X) (\x. E x)) D *
          bind F (lam L0 \x. E0 x) *
          bind X V
           >-> {eval (E0 L0) L0 * cont (call1 L (\x. E x)) L0 D}.

ev/call1: retn V D0 * cont (call1 L (\x. E x)) D0 D
           >-> {eval (E L) D * bind L V}.

ev/new:   eval (bnd L newpair (\x. E x)) D
           >-> {eval (E L) D * 
                cell L fst null * cell L snd null *
                bind L (loc L)}.

ev/proj:  eval (bnd L (proj X Fld) (\x. E x)) D *
          bind X (loc L') *
          cell L' Fld V
           >-> {eval (E L) D * cell L' Fld V *
                bind L V}.

ev/set:   eval (bnd L (set X Fld Y) (\x. E x)) D * 
          bind X (loc L') *
          bind Y V 
           >-> {eval (E L) D * cell L' Fld V *
                bind L V'}.
