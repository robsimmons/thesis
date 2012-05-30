#rule ev/steps: eval E 
           >-> !step E E' 
           >-> {eval E' *
                (All V. retn V 
                  >-> {retn V})}.

#rule ev/value: eval V 
           >-> !value V 
           >-> {retn V}.