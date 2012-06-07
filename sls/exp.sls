mutable_loc: type.
bind_loc: type.

frame: type.

exp: type.
lam: (exp -> exp) -> exp.
app: exp -> exp -> exp.
junk: exp.
choose: exp -> exp -> exp.
ite: exp -> exp -> exp -> exp.
true: exp.
false: exp.
unit: exp.
pair: exp -> exp -> exp.
loc: mutable_loc -> exp.
ref: exp -> exp.
get: exp -> exp.
set: exp -> exp -> exp.
thunk: (exp -> exp) -> exp.
issusp: bind_loc -> exp.
force: exp -> exp.

ref1: frame.
get1: frame.
set1: exp -> frame.
set2: mutable_loc -> frame.
force1: frame.
bind1: bind_loc -> frame.
