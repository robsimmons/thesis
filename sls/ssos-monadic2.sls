cell: locvar -> field -> value -> prop lin.

ev/new:   eval (bnd L newpair (\x. M x)) D
           >-> {Exists y. Exists l'. eval (M y) D * 
                cell l' fst null * cell l' snd null *
                !bind y (loc l')}.

ev/proj:  eval (bnd L (proj X Fld) (\x. M x)) D *
          !bind X (loc L') *
          cell L' Fld V
           >-> {Exists y. eval (M y) D * cell L' Fld V *
                !bind y V}.

ev/set:   eval (bnd L (set X Fld Y) (\x. M x)) D * 
          !bind X (loc L') *
          !bind Y V *
          cell L' Fld V'
           >-> {Exists y. eval (M y) D * 
                cell L' Fld V *
                !bind y V'}.
