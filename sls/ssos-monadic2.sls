cell: locvar -> field -> value -> prop lin.

ev/new:   eval (bnd L newpair (\x. E x))
           >-> {Exists y. Exists l'. eval (E y) * 
                cell l' fst null * cell l' snd null *
                bind y (loc l')}.

ev/proj:  eval (bnd L (proj X Fld) (\x. E x)) *
          bind X (loc L') *
          cell L' Fld V
           >-> {Exists y. eval (E y) * cell L' Fld V *
                bind y V}.

ev/set:   eval (bnd L (set X Fld Y) (\x. E x)) * 
          bind X (loc L') *
          bind Y V *
          cell L' Fld V'
           >-> {Exists y. eval (E y) * cell L' Fld V *
                bind y V'}.
