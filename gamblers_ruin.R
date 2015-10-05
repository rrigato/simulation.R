#gamblers ruin
set.seed(2842);
 P = 	  	       matrix(c( 1, 0, 0, 0, 0, 0,
 				   .46, 0, .46, 0, 0, 0,
 				   0, .46, 0, .46, 0, 0,
				   0, 0, .46, 0, .46, 0,
 				   0, 0, 0, .46, 0, .46,
 				   0, 0, 0, 0, 0, 1)
				   , nrow=6, byrow=T) 
P2 = P %*% P; round(P2, 3)
P4 = P2 %*% P2; round(P4, 3)
P8 = P4 %*% P4; round(P8, 3)
P16 = P8 %*% P8; round(P16, 3)
P32 = P16 %*% P16; round(P32, 3)#reaches steady state
P64 = P32 %*% P32; round(P64, 3) 
P128 = P64 %*% P64; round(P128, 3) 
P256 = P128 %% P128; round(P256,3)
P512 = P256 %% P256; round(P512,3)
P1024 = P512 %% P512; round(P1024,3)
P2048 = P1024 %% P1024; round (P2048, 3)
P4096 = P2048 %%P2048; round(P4096, 3)
P8192 = P4096 %%P4096; round(P8192,3)



#algebraic solution
Q = P[2:5, 2:5]; N = P[2:5, c(1, 6)]
I = matrix(0, ncol=4, nrow=4); for (k in 1:4){I[k, k]=1}
M = solve(I-Q); M 
rowSums(M) #mean Time until absorbtion


#simulation of results
set.seed(2842); m = 100000; t = a = numeric(m)
weights = c(.54,.46)
for (i in 1:m)
{
 x = cs = 3
while ((cs > 0) & (cs < 5))
 {
 cs = sample(c(-1,1), 1, prob=weights) + cs
 x = c(x, cs)
 }
 t[i] = length(x) - 1
 a[i] = cs
}
mean(t); mean(t <= 8); 
