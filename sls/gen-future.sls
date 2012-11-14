offuture: exp -> typ -> prop pers.
genfuture: dest -> exp -> prop lin.

of/future: of X Tp <- offuture X Tp.

future/promise: {Exists d. Exists x. $genfuture d x * !offuture x Tp}.

future/compute: $genfuture D X * !offuture X Tp 
                 >-> {$gen Tp D * $promise D X}.

future/bind:    $genfuture D X * !offuture X Tp * !of V Tp * !value V 
                 >-> {!bind X V}.