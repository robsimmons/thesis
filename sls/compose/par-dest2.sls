cancel: dest -> prop lin.

ev/errorL:    error V D1 * cont2 X D1 D2 D 
               >-> {error V D * cancel D2}.

ev/errorR:    retn _ D1 * error V D2 * cont2 _ D1 D2 D
               >-> {error V D}.

cancel/eval:  eval _ D * cancel D >-> {one}.
cancel/retn:  retn _ D * cancel D >-> {one}.
cancel/error: error _ D * cancel D >-> {one}.
cancel/cont:  cont _ D' D * cancel D >-> {cancel D'}.
cancel/cont2: cont2 _ D1 D2 D * cancel D >-> {cancel D1 * cancel D2}.
