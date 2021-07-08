new.function <- function(a) {
  for(i in 1:a){
    b <- i^2
    print(b)
  }
}

new.function(100)

func.tri <- function(i){
 for (j in 1:i) {
   print(replicate(j, '#'))
 }
}

func.tri(10)

# To repeat a string to "N" number of times use the replicate() function