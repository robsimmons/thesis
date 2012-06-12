#|
  lc-ev.sls after the operationalization transformation 
  The only non-whitespace changes that have been made to this file
  are the turning around of arrows to make deductive rules look like
  we're used to them looking.
|#

eval: exp -> prop ord.
retn: exp -> prop ord.
evn: nat -> exp -> exp -> prop.
var: exp -> prop pers.
enat: exp -> exp -> (exp -> exp) -> prop ord.
rnat: exp -> prop ord.


#| Lambda calculus |#

ev/lam:   eval (lam (\x. E x)) >-> {retn (lam (\x. E x))}.
ev/app:   eval (app E1 E2)
           >-> {eval E1 * 
                (All E: (exp -> exp). retn (lam (\x. E x))
                  >-> {eval E2 * 
                       (All V2: exp. retn V2 
                         >-> {eval (E V2) * 
                              (All V: exp. retn V
                                >-> {retn V})})})}.

ev/var':  var X >-> evn N X X.
ev/lam':  evn N (lam (\x. E x)) (lam (\x. V x))
           <- (All x: exp. var x >-> evn N (E x) (V x)).
ev/app':  evn N (app E1 E2) (app V1 V2).
           <- evn N E1 V1
           <- evn N E2 V2.


#| Mini-ML |#

ev/fix:   eval (fix (\x. E x))
           >-> {eval (E (fix (\x. E x))) *
                (All V: exp. retn V
                  >-> {retn V})}.
ev/pair:  eval (pair E1 E2) 
           >-> {eval E1 *  
                (All V1: exp. retn V1 
                  >-> {eval E2 *
                       (All V2: exp. retn V2
                         >-> {retn (pair V1 V2)})})}.
ev/fst:   eval (fst E) 
           >-> {eval E * 
                (All V: exp. All X1: exp. retn (pair V X1) 
                  >-> {retn V})}.
ev/snd:   eval (snd E)
           >-> {eval E *
                (All X1: exp. All V: exp. retn (pair X1 V)
                  >-> {retn V})}.
ev/zero:  eval zero >-> {retn zero}.
ev/succ:  eval (succ E) 
           >-> {eval E *
                (All V: exp. retn V >-> {retn (succ V)})}.
ev/case:  eval (case E Ez (\x. Es x)) 
           >-> {eval E * 
                (All V': exp. retn V' 
                  >-> {enat V' Ez (\x. Es x) * 
                       (All V: exp. rnat V 
                         >-> {retn V})})}.
casen/z:  enat zero Ez (\x. Es x) 
           >-> {eval Ez * 
                (All V: exp. retn V >-> {rnat V})}.
casen/s:  enat (succ V') Ez (\x. Es x) 
           >-> {eval (Es V') *
                (All V: exp. retn V >-> {rnat V})}.

ev/fix':  evn N (fix (\x. E x)) (fix (\x. V x))
           <- (All x: exp. var x >-> evn N (E x) (V x)).
ev/pair': evn N (pair E1 E2) (pair V1 V2)
           <- evn N E2 V2
           <- evn N E1 V1.
          
ev/fst':  evn N (fst E) (fst V)
           <- evn N E V.
ev/snd':  evn N (snd E) (snd V)
           <- evn N E V.
ev/zero': evn N zero zero.
ev/succ': evn N (succ E) (succ V) <- evn N E V.
ev/case': evn N (case E Ez (\x. Es x)) (case V Vz (\x. Vs x)).
           <- evn N E V 
           <- evn N Ez Vz 
           <- (All x: exp. var x >-> evn N (Es x) (Vs X)).


#| Temporal |#

ev/next:  eval (next E)
           >-> All V: exp. evn z E V
           -> {retn (next V)}.
ev/next': evn N (next E) (next V) 
           <- evn (s N) E V.

ev/prev:  evn z (prev E) V 
           <- (eval E >-> {retn (next V)}).
ev/prev': evn N E V -> evn (s N) (prev E) (prev V).
