error: prop >-> ord.
handle: exp -> prop ord.

ev/fail:   eval fail >-> {error}.
ev/error:  error * cont F >-> {error}.

ev/catch:  eval (catch E1 E2) >-> {eval E1 * handle E2}.
ev/catcha: retn V * handle _ >-> {retn V}.
ev/catchb: error * handle E2 >-> {eval E2}.