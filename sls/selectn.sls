#mode selectn + + + -.
selectn: exp -> exp -> (exp -> exp) -> exp -> prop.
selectn/z:  selectn zero Ez (\x. Es x) Ez.
selectn/s:  selectn (succ V') Ez (\x. Es x) (Es V').
