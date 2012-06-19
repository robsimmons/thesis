error: dest -> prop lin.
handle: exp -> dest -> prop lin.
terminate: dest -> prop lin.

ev/fail:   eval fail D >-> {error D}.
ev/error:  error D' * cont F D' D >-> {error D}.
ev/errorL: error D1 * cont2 F D1 D2 D >-> {error D * termiante D2}.
ev/errorR: error D2 * cont2 F D1 D2 D >-> {error D * terminate D1}.

term/retn: retn V D * terminate D >-> {1}. ; Returning in vain
term/err:  error D * terminate D >-> {1}.  ; Failing redundantly

ev/catch:  eval (catch E1 E2) D
            >-> {Exists d'. eval E1 d' * handle E2 d' D}.
ev/catcha: retn V D' * handle _ D' D >-> {retn V D}.
ev/catchb: error D' * handle E2 D' D >-> {eval E2 D}.