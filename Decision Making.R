x <- 30L
if (is.integer(x)){
  print("X is an interger")
}

x <- 30
if (class(x) == "numeric"){
  print("The class of x is numeric")
} else {
  print("Unkown entity")
}

x <- c("what","is","Truth")

if("Truth" %in% x) {
  print("Truth is found")
} else {
  print("Truth is not found")
}

x <- c("what","is","truth")

if("Truth" %in% x) {
  print("Truth is found the first time")
} else if ("truth" %in% x) {
  print("truth is found the second time")
} else {
  print("No truth found")
}

# to demonstrate syntax of switch.

# Mathematical calculation

val1 = 6  
val2 = 7
val3 = "s"  
result = switch(  
  val3,  
  "a"= cat("Addition =", val1 + val2),  
  "d"= cat("Subtraction =", val1 - val2),  
  "r"= cat("Division = ", val1 / val2),  
  "s"= cat("Multiplication =", val1 * val2),
  "m"= cat("Modulus =", val1 %% val2),
  "p"= cat("Power =", val1 ^ val2)
)  

print(result) 