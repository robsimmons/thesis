ev/succ: eval (succ E)
          >-> {eval E * 
               ((All V. retn V >-> {retn (succ V)})
                & (error >-> {error}))}.
