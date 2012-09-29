gencount/finalize: $gencount N >-> {$counter (s N)}.

gencell/promise: $gencount N 
                  >-> {Exists l. 
                       !ofcell l T * $gencell l N * $gencount N}.

gencell/fulfill: $gencell L N * !ofcell L T * !of V T * !value V 
                  >-> {$cell L N V}.