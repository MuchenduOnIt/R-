A <- matrix(c(2,1,3,4,1,2,-3,4,1), byrow=TRUE, nrow=3)
B <- matrix(c(-1,4,3,2,6,1,7,3,2), byrow=TRUE, nrow=3)
print(A)
print(B)

comb1 <- cbind(A,1:2, B[,2])
comb2 <- cbind(A[,1], B[,1])

merge1 <- data.frame(A[,1], A[,2])
merge2 <- data.frame(B[,1], B[,2])
merge3 <- data.frame(merge1, merge2)
marge4 <- as.matrix(merge3)
print(marge4)

Acol1 <- A[,1]
Acol2 <- A[,2]
Bcol1 <- B[,1]
Bcol2 <- B[,2]
final <- matrix(c(Acol1,Acol2,Bcol1,Bcol2),byrow=FALSE, nrow=3)
print(as.matrix(final))

s = cbind(A[,1],A[,2],B[,1],B[,2])
print(s)

print(merge(comb1,comb2))
print(solve(B))
print(A*solve(A))
print(B[1,])

print(eigen(A))
print(plot(A,B,type="l"))
