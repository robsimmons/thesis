cell: mutable_loc -> exp -> prop lin.

ev/loc:  eval (loc L)
          >-> {retn (loc L)}.

ev/ref:  eval (ref E)  
          >-> {eval E * cont ref1}.

ev/ref1: retn V * cont ref1 
          >-> {Exists l. cell l V * retn (loc l)}.

ev/get:  eval (get E)
          >-> {eval E * cont get1}.

ev/get1: retn (loc L) * cont get1 * cell L V
          >-> {retn V * cell L V}.

ev/set:  eval (set E1 E2)
          >-> {eval E1 * cont (set1 E2)}.

ev/set1: retn (loc L) * cont (set1 E2)
          >-> {eval E2 * cont (set2 L)}.

ev/set2: retn V2 * cont (set2 L) * cell L _
          >-> {retn unit * cell L V2}.