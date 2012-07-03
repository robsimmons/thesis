dest: type.
variable: type.
exp: type.
cmd: type.
locvar: type.
value: type.

field: type.
fst: field.
snd: field.

letcmd: variable -> cmd -> (variable -> exp) -> exp.
return: variable -> variable -> exp.

lam: (variable -> exp) -> value.
loc: locvar -> value.
null: value.

fun: (variable -> exp) -> cmd.
call: variable -> variable -> cmd.
newpair: cmd.
proj: variable -> field -> cmd.
set: variable -> field -> variable -> cmd.