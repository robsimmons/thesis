dest: type.
variable: type.
exp: type.
cmd: type.
locvar: type.
value: type.

field: type.
fst: field.
snd: field.

ret: variable -> cmd.
bnd: variable -> exp -> (variable -> cmd) -> cmd.

fun: (variable -> cmd) -> exp.
call: variable -> variable -> exp.
newpair: exp.
proj: variable -> field -> exp.
set: variable -> field -> variable -> exp.

lam: variable -> (variable -> cmd) -> value.
loc: locvar -> value.
null: value.

frame: type.
