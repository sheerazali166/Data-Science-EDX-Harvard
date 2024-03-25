

# 3.1 Conditional expressions

a <- 0

if (a != 0 ) {
  
  print(1/a)
  
} else {
  
   print("No reciprocal for 0.")
 
}

library(dslabs)
data(murders)
murder_rate <- murders$total / murders$population * 100000

ind <- which.min(murder_rate)

if (murder_rate[ind] < 0.5) {
  
  print(murders$state[ind])
  
} else {
  
  print("No state has murder rate that low")

}

if (murder_rate[ind] < 0.25) {
  
  print(murders$state[ind])

} else {
  
  print("No state has a murder rate that low.")
  
}

a <- 0

ifelse(a < 0, 1/a, NA)

a <- c(0, 1, 2, -4, 5)

result <- ifelse(a > 0, 1/a, NA)

# 3.2 Defining functions

data("na_example")

no_nas <- ifelse(is.na(na_example), 0, na_example)
sum(is.na(no_nas))

z <- c(TRUE, TRUE, FALSE)

any(z)

all(z)

# 3.2 Defining functions
avg <- function(x) {
  
  s <- sum(x)
  n <- length(x)
  
  s / n

}

x <- 1:100

avg(x)
mean(x)

identical(mean(x), avg(x))

s <- 3
avg(1:10)
s

# my_function <- function(VARIABLE_NAME){
#  perform operations on VARIABLE_NAME and calculate VALUE VALUE
# }

print("Bravo")
print("Bella is the best")

avg <- function(x, arithmetic = TRUE) {
  
  n <- length(x)
  
  ifelse(arthimetic, sum(x)/n, prod(x)^(1/n))
  
}

# 3.3 Namespaces

# 3.4 For-loops

search()

stats::filter

dplyr::filter

# 3.4 For-loops
compute_s_n <- function(n) {
  
  x <- 1:n
  sum(x)
  
}

for(i in 1: 5) {
  print(i)
  
} 

m <- 25
s_n <- vector(length = m) # create an empty vector

for (n in 1:m) {
  s_n[n] <- compute_s_n(n)
  
}

n <- 1:m
plot(n, s_n)

x <- 1:10

sqrt(x)

y <- 1:10

x * y

# 3.6 Exercises

n <- 25
compute_s_n(n)

x <- 1:10

sapply(x, sqrt)

n <- 1:25

s_n <- sapply(n, compute_s_n)

# 3.6 Exercises
x <- c(1, 2, -3, 4)

if(all(x > 0)) {
  
  print("All Postives")

} else {
  
  print("Not all positives")
  
}

x <- 3

my_func <- function(y) {
  
  x <- 5
  y + 5
}











































