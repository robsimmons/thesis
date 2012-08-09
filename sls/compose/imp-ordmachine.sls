cell: mutable_loc -> exp -> prop lin.

ev/loc: eval (loc L) >-> {retn (loc L)}.

ev/ref: eval (ref E1)
         >-> {eval E1 *
              (All V1. retn V1 
                >-> {Exists l. retn (loc l) * $cell l V1})}.

ev/get: eval (get E1)
         >-> {eval E1 *
              (All L. retn (loc L) * $cell L V
                >-> {retn V * $cell L V})}.

ev/set: eval (set E1 E2) 
         >-> {eval E1 *
              (All L. retn (loc L) 
                >-> {eval E2 *
                     (All V2. All Vignored. retn V2 * $cell L Vignored
                       >-> {retn unit * $cell L V2})})}.