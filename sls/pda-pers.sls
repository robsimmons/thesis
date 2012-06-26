hd: dest -> dest -> prop pers.
left: tok -> dest -> dest -> prop pers.
right: tok -> dest -> dest -> prop pers.
stack: tok -> dest -> dest -> prop pers.

push: hd L M * left X M R 
       >-> {Exists m. stack X L m * hd m R * m = fm (X L M R)}.

pop:  stack X L M1 * hd M1 M2 * right X M2 R >-> {hd L R}.