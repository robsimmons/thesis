hd: dest -> dest -> prop lin.
left: tok -> dest -> dest -> prop lin.
right: tok -> dest -> dest -> prop lin.
stack: tok -> dest -> dest -> prop lin.

push: hd L M * left X M R >-> {Exists m. stack X L M * hd M R}.
pop:  stack X L M1 * hd M1 M2 * right X M2 R >-> {stack X L R}.