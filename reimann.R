#pdf of f(x) = C * exp(-x^3)
set.seed(2842);
integrand = function(x){dexp(x, rate=3)}
integrate(integrand, 0, Inf) 
#c = 1 because 1/1= 1
