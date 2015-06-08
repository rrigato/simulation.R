#pdf of f(x) = C * exp(-x^3)
set.seed(2842);
integrand = function(x){dexp(x, rate=3)}
integrate(integrand, 0, Inf) 
#c = 1 because 1/1= 1
#makes sense because all of the probability for an exponential is above 0


#e[x]
#simple monte carlo
m = 1000000; a = 0; b = 20
w = (b - a)/m # average distance btw random pts
u = runif(m, a, b) # random points
h = u * dexp(u,rate=3) # heights above random points
sum(w*h) 

#reiman to approximate e[x]
m = 100000; a = 0; b = 20 
w = (b - a)/m # width (base) of rectangles
g = seq(a+w/2, b, by=w) # grid of m centers
h = g * dexp(g,rate=3) # heights of rectangles
sum(w*h) 



#finding p(.5<X<1.5) simple monte carlo
m = 100000; a = 0.5; b = 1.5
w = (b - a)/m # average distance btw random pts
u = runif(m, a, b) # random points
h = dexp(u,rate=3) # heights above random points
sum(w*h) 

#acceptance rejection for p(.5<X<1.5)
m = 10^6; a = 0.5; b = 1.5
u = runif(m, a, b); h = runif(m, 0, 0.8) # random pts in rectangle
frac.acc = mean(h < dexp(u,rate=3))
area = (b-a)*0.8
area*frac.acc 
