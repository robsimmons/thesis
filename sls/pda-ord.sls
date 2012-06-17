left: tok -> prop ord.
right: tok -> prop ord.
stack: tok -> prop ord.
hd: prop ord.

push: hd * left X >-> {stack X * hd}.
pop:  stack X * hd * right X >-> {stack X}.