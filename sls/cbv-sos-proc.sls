#rule ev/steps: eval E 
           >-> !step E E' 
           >-> {eval E'}.



#rule ev/value: eval V 
           >-> !value V 
           >-> {retn V}.