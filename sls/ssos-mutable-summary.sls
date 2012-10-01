ev/ref1: retn V * cont ref1 
          >-> {Exists l. $cell l V * retn (loc l)}.
ev/get1: retn (loc L) * cont get1 * $cell L V
          >-> {retn V * $cell L V}.
ev/set2: retn V2 * cont (set2 L) * $cell L _
          >-> {retn unit * $cell L V2}.