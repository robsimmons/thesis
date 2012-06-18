nat: type.
z: nat.
s: nat -> nat.

bit: type.
b0: bit.
b1: bit.

bin: type.
e: bin.
d: bin -> bit -> bin.


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
fix: (exp -> exp) -> exp.
zero: exp.
case: exp -> exp -> (exp -> exp) -> exp.
succ: exp -> exp.
fst: exp -> exp.
snd: exp -> exp.
prev: exp -> exp.
next: exp -> exp.
lazylam: (exp -> exp) -> exp.
envlam: (exp -> exp) -> exp.
fail: exp.
catch: exp -> exp -> exp.

ref1: frame.
get1: frame.
set1: exp -> frame.
set2: mutable_loc -> frame.
force1: frame.
bind1: bind_loc -> frame.
bind1': exp -> frame.
casez: exp -> frame.
cases: (exp -> exp) -> frame.
case1: exp -> (exp -> exp) -> frame.
inc0: frame.
p00: frame.
p01: frame.
p11: frame.
p11: frame.
ap1: exp -> frame.
ap2: exp -> frame.
pair1: frame.
fst1: frame.
snd1: frame.
succ1: frame.
app2': exp -> exp -> frame.