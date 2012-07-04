label: type.
exp: type.
cmd: type.
value: type.

field: type.
fst: field.
snd: field.

ret: label -> cmd.
bnd: label -> exp -> (label -> cmd) -> cmd.

fun: (label -> cmd) -> exp.
call: label -> label -> exp.
newpair: exp.
proj: label -> field -> exp.
set: label -> field -> label -> exp.

lam: label -> (label -> cmd) -> value.
loc: label -> value.
null: value.

frame: type.
