#operationalize "ssos-minml-case-factor.auto.sls" 
   (casen ~> casen retn) (ev ~> eval retn).

#mode ev + -.
ev: exp -> exp -> prop.

#mode casen + + + -.
casen: exp -> exp -> (exp -> exp) -> exp -> prop.

ev/case: ev (case E Ez \x. Es x) V
  <- ev E V'
  <- casen V' Ez (\x. Es x) V.

casen/z: casen zero Ez (\x. Es x) V <- ev Ez V.
casen/s: casen (succ V') Ez (\x. Es x) V <- ev (Es V') V. 

#operationalize stop.