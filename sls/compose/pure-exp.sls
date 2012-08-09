exp: type.
lam: (exp -> exp) -> exp.                ; fn x => e
app: exp -> exp -> exp.                  ; e₁(e₂)
fix: (exp -> exp) -> exp.                ; fix x.e
true: exp.                               ; tt
false: exp.                              ; ff
ite: exp -> exp -> exp -> exp.           ; if e then et else ef
zero: exp.                               ; z
succ: exp -> exp.                        ; s(e)
case: exp -> exp -> (exp -> exp) -> exp. ; case e of z => ez | s x => es
unit: exp.                               ; <>
pair: exp -> exp -> exp.                 ; <e1, e2>
fst: exp -> exp.                         ; e.1
snd: exp -> exp.                         ; e.2

