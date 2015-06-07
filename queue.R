#M/M/1/2 queue
#lambda = 4 (arrival rate) mu = 5 (service rate)
#lambda(a)/lambda(e) =  L/W
# L expected # of customers, W is the average time
# L = lambda*W = lambda / (mu - lambda) simul = sum((0:N)*t.avg) 
#row = lambda/mu = 4/5  
# W =  L/lambda = L/(mu-lambda)   simul = sum((0:N)*t.avg) / lambda
#Wq = W -1/mu
#Lq = lambda*Wq =  L - lamda/mu  simul = Lq = p2

set.seed(2842);
N = 2; lam = 4; mu = 5; rho = lam/mu
m = 100000; x = t = numeric(m); x[1] = 0
