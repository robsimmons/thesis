cell: loc -> field -> value -> prop lin.

eval/new:   eval (letcmd L newpair \x. E x)
             >-> {Exists y. Exists l'. eval (E y) * 
                  cell l' fst null * cell l snd null *
                  bind y (loc l')}.

eval/proj:  eval (letcmd L (proj X Fld) \x. E x) *
            bind X (loc L') *
            cell L' Fld V
             >-> {Exists y. eval (E y) * cell L' Fld V *
                  bind y V}.

eval/set:   eval (letcmd L (set X Fld Y) \x. E x) * 
            bind X (loc L') *
            bind Y V *
            cell L' Fld V'
             >-> {Exists y. eval (E y) * cell L' Fld V *
                  bind y V'}.
