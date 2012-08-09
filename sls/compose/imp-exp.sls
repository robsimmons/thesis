mutable_loc: type.
loc: mutable_loc -> exp.                 ; (no concrete syntax)
ref: exp -> exp.                         ; ref e
get: exp -> exp.                         ; !e
set: exp -> exp -> exp.                  ; e1 := e2

bind_loc: type.
issusp: bind_loc -> exp.                 ; (no concrete syntax)
thunk: (exp -> exp) -> exp.              ; thunk x.e
force: exp -> exp.                       ; force e
