#mode action + - -.
action: exp -> exp -> (exp -> exp) -> prop.

act/t: action (always V) (always V) (\x. x).
act/s: action (send (chan C) V) (send (chan C) V) (\x. x).
act/v: action (recv (chan C)) (recv (chan C)) (\x. x).
act/l: action (choose Event1 Event2) Lab (\x. E x)
        <- action Event1 Lab (\x. E x).
act/r: action (choose Event1 Event2) Lab (\x. E x)
        <- action Event2 Lab (\x. E x).
act/w: action (wrap Event1 \x. E2 x) Lab (\x. app (lam (\x. E2 x)) (E x))
        <- action Event1 Lab (\x. E x). 

synch: exp -> dest -> prop lin. 

sync1: frame.

ev/sync:    
  eval (sync E1) D >-> {Exists d1. eval E1 d1 * cont sync1 d1 D}.

ev/sync1:   
  retn W D1 * cont sync1 D1 D >-> {synch W D}.

synch/always: 
  synch Event D *  
  !action Event (always V') (\x. E x)
   >-> {eval (E V') D}.

synch/communicate:   
  synch Event1 D1 * 
  !action Event1 (send (chan C) V) (\x. E1 x) *
  synch Event2 D2 * 
  !action Event2 (recv (chan C)) (\x. E2 x) 
   >-> {eval (E1 unit) D1 * eval (E2 V) D2}.