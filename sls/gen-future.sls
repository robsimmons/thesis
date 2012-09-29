offuture: exp -> tp -> prop pers.
genfuture: dest -> exp -> prop lin.

of/future: of X T <- offuture X T.

future/promise: {Exists d. Exists x. $genfuture d x * !offuture x T}.

future/compute: $genfuture D X * !offuture X T 
                 >-> {$gen T D * $promise D X}.

future/bind:    $genfuture D X * !offuture X T * !of V T * !value V 
                 >-> {!bind X V}.