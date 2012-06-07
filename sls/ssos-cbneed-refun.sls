ev/force: eval (force E)
           >-> {eval E * 
                ((All L. All E'.
                  retn (issusp L) * susp L (\x. E' x) 
                   >-> {eval (E' (issusp L)) * blackhole L * 
                        (All V. retn V * blackhole L
                          >-> {retn V * bind L V})})
     #| STUCK -  & (All L. retn (issusp L) * blackhole L >-> ???) |#
                 & (All L. All V. 
                    retn (issusp L) * bind L V >-> {retn V}))}. 