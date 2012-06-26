hd: dest -> prop pers.
left: tok -> dest -> dest -> prop pers.
right: tok -> dest -> dest -> prop pers.
stack: tok -> prop pers.

push: hd M * left X M R >-> {stack X * hd R}.
pop:  stack X * hd M2 * right X M2 R >-> {hd R}.