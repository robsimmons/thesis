inc: bin -> prop ord.  
retn_inc: bin -> prop ord.

inc/e:  inc e 
         >-> {retn_inc (d e b1)}.

inc/0:  inc (d N b0) 
         >-> {retn_inc (d N b1)}.

inc/1:  inc (d N b1) 
         >-> {inc N * cont inc0}.
inc/11: retn_inc R * cont inc0 
         >-> {retn_inc (d R b0)}.

plus: bin -> bin -> prop ord.
retn_plus: bin -> prop ord.

plus/ee:  plus e N >-> {retn_plus N}.

plus/e0:  plus M e >-> {retn_plus N}.

plus/00:  plus (d M b0) (d N b0) 
           >-> {plus M N * cont p00}.
plus/001: retn_plus R * cont p00 
           >-> {retn_plus (d R b0)}.

plus/01:  plus (d M b0) (d N b1)
           >-> {plus M N * cont p01}.
plus/011: retn_plus R * cont p01 
           >-> {retn_plus (d R b1)}.

plus/10: plus (d M b1) (d N b0)
           >-> {plus M N * cont p10}.
plus/101: retn_plus R * cont p10
           >-> {retn_plus (d R b1)}.

plus/11:  plus (d M b1) (d N b1) 
           >-> {plus M N * cont p11}.
plus/111: retn_plus K * cont p11
           >-> {inc K * cont p112}.
plus/112: retn_inc R * cont p112
           >-> {retn_plus (d R b0)}.