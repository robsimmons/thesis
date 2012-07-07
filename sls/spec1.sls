#ghost gen.
gen: tp -> prop ord.

;; Basic spec
gen/eval:   gen T * !of E T >-> {eval E}.
gen/retn:   gen T * !of V T * !value V >-> {retn V}.
gen/cont:   gen T * !offrame F T' T >-> {gen T' * cont F}.

;; Describing parallelism, Chapter 6-style
gen/cont2:  gen T * !offrame2 F T1 T2 T >-> {gen T1 * gen T2 * cont2 F}.

;; 
gen/error:  gen T >-> {error}.
gen/handle: gen T * eval E T >-> {gen T * handle E}.

rpromise: gencells >-> {}.