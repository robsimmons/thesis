ev/case:  eval (case E Ez (\x. Es x)) 
           >-> {eval E * cont (case1 Ez \x. Es x)}.
ev/case1: eval retn V' * cont (case1 Ez \x. Es x)
           >-> {enat V' Ez (\x. Es x) * cont enat1}.
ev/case2: rnat V * cont enat1 >-> {retn V}.

casen/z:  enat zero Ez (\x. Es x)
           >-> {eval Ez

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