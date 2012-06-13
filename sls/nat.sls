#mode inc + -.
inc: bin -> bin -> prop.

inc/e: inc e (b e b1).


inc/0: inc (b N b0) (b N b1).


inc/1: inc (b N b1) (b R b0)
        <- inc N R.



#mode plus + + -. 
plus: bin -> bin -> bin -> prop.

plus/ee: plus e N N.

plus/e0: plus M e N.

plus/00: 
plus (b M b0) (b N b0) (b R b0) 
 <- plus M N R.


plus/01: 
plus (b M b0) (b N b1) (b R b1)
 <- plus M N R.


plus/10: 
plus (b M b1) (b N b0) (b R b1) 
 <- plus M N R.


plus/11: 
plus (b M b1) (b N b1) (b R b0)
 <- plus M N K
 <- inc K R. 


