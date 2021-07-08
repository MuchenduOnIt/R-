num_darts <- 1000
in_circle <- 0
for(i in 1:num_darts) {
  x <- runif(n=1, min=-1, max=1)  #Runif Stands forRandomly uniform variable
  y <- runif(n=1, min=-1, max=1)
  if(x^2 + y^2 <= 1){
    in_circle = in_circle + 1
  }
}

print(4 * in_circle/num_darts)

Nsim=10^4
X=runif(Nsim) 
X1=x[-Nsim]
X2=x[,-1]
par(mfrow=c(1,3))
hist(X)
plot(X1,X2)
acf(X)