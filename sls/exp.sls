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

channel:type.

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
flam: (exp -> exp) -> exp.
fail: exp.
catch: exp -> exp -> exp.
chan: (channel -> exp) -> exp.
send: channel -> exp -> exp.
recv: channel -> exp.
letcc: (exp -> exp) -> exp.
throw: exp -> exp -> exp.
var: (exp -> exp) -> exp.
let: exp -> (exp -> exp) -> exp.

let1: (exp -> exp) -> frame.
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
ap1: exp -> frame.
ap2: exp -> frame.
app2': exp -> exp -> frame.
send1: channel -> frame.
throw1: exp -> frame.
throw2: exp -> frame.

dest: type.
contn: dest -> exp.

typ: type.
unittp: typ.
arr: typ -> typ -> typ.
reftp: typ -> typ.
conttp: typ -> typ.