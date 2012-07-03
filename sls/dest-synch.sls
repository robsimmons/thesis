ev/chan:  eval (chan \c. E c) D >-> {Exists c. eval (E c) D}.

ev/send:  eval (send C E) Dsend
           >-> {Exists d'. eval E d' * cont (send1 C) d' Dsend}.

ev/send1: retn V D' * cont (send1 C) D' Dsend * eval (recv C) Drecv
           >-> {retn unit Dsend * retn V Drecv}.