raise: exp -> exp.                       ; raise e
try: exp -> (exp -> exp) -> exp.         ; try e catch x.ef 