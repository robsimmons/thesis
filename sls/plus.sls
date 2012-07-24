#mode inc + -.
inc: nat -> nat -> prop.

inc/eps: inc eps (c eps b1).
inc/b0: inc (c N b0) (c N b1).
inc/b1: inc (c N b1) (c R b0) <- inc N R.

#mode plus + + -.
plus: nat -> nat -> nat -> prop.
plus/eN: plus eps N N.
plus/Ne: plus N eps N. 
plus/b00: plus (c M b0) (c N b0) (c R b0) <- plus M N R. 
plus/b01: plus (c M b0) (c N b1) (c R b1) <- plus M N R.
plus/b10: plus (c M b1) (c N b0) (c R b1) <- plus M N R.
plus/b11: plus (c M b1) (c N b1) (c R b0) <- plus M N K <- inc K R.