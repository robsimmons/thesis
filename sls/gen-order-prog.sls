eval: exp -> prop ord.
retn: exp -> prop ord.
cont: frame -> prop ord.
cont2: frame -> prop ord.
error: prop ord.
handle: exp -> prop ord.

;; Unit
ev/unit: eval unit >-> {retn unit}.

;; Sequential let
ev/let:  eval (let E \x. E' x) >-> {eval E * cont (let1 \x. E' x)}.
ev/let1: retn V * cont (let1 \x. E' x) >-> {eval (E' V)}.

;; Functions and parallel application 
ev/lam:  eval (lam \x. E x) >-> {retn (lam \x. E x)}.
ev/app:  eval (app E1 E2) >-> {eval E1 * eval E2 * cont2 app1}.
ev/app1: retn (lam \x. E x) * retn V2 * cont2 app1
          >-> {eval (E V2)}.

;; Recoverable failure 
ev/fail:   eval fail >-> {error}.
ev/catch:  eval (catch E1 E2) >-> {eval E1 * handle E2}.
ev/catcha: retn V * handle _ >-> {retn V}.
ev/catcha: error * handle E2 >-> {eval E2}.

ev/error:  error * cont _ >-> {error}.
ev/errerr: error * error * cont2 _ >-> {error}.
ev/errret: error * retn _ * cont2 _ >-> {error}.
ev/reterr: retn _ * error * cont2 _ >-> {error}.
