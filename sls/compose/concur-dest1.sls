terminate: dest -> prop lin.

term/retn:  retn _ D * terminate D >-> {one}.
term/error: error _ D * terminate D >-> {one}.

ev/spawn:   eval (spawn E) D 
             >-> {retn unit D *
                  Exists d'. eval E d' * terminate d'}.

ev/newch:   eval newch D >-> {Exists c. retn (chan c) D}.