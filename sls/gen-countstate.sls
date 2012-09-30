gencount/finalize: $gencount N >-> {$counter (s N)}.

gencell/promise: $gencount N 
                  >-> {Exists l. 
                       !ofcell l Tp * $gencell l N * $gencount N}.

gencell/fulfill: $gencell L N * !ofcell L Tp * !of V Tp * !value V 
                  >-> {$cell L N V}.