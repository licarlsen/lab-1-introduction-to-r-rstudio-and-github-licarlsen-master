# This is an R script. Any line that starts with # is a comment.
# Comments are ignored by R when you run the script.
# Any line that does not start with # will be run.

#### RUNNING CODE ####

# There are a few ways to run this script in RStudio.
# 1) You can run the entire script by pressing Ctrl+Alt+R, or by pressing the Source
#    button in the top right corner of this window.
# 2) You can run a section of the code by selecting it and pressing the Run button, 
#    or by pressing Cmd+Enter on a Mac or Ctrl+Enter on a PC. If you do not select any
#    code, then only the line that your cursor is on will be run.
# 3) There are other shortcuts avaiable in the Code menu at the top of the screen.

# Try putting the cursor on the line below and running it by pressing Ctrl+Enter (Cmd+Enter)

2 + 2

# In the console output below, you should see that R can do math.

#### BASIC MATH ####

# Try adding some code below to subtract (-), multiply (*), and divide (/).

351-51
17*3
123201/351

# Now add some code to create exponentials (^), like 2 raised to the 8th power.

14^6
6.8^73

#### VARIABLES ####

# What if you want to store the result of 2 + 2 and use it later? You need a variable.

result <- 2 + 2

# The line above assigns (<-) the output of 2+2 to the variable 'result'. Run the line,
# and notice that the top right panel of RStudio has changed. It shows you that the
# variable result is currently set to 4.

# Create a variable below called 'message' and assign it the value "Welcome to R!"

message <- "Welcome to R!"

# Now change 'result' to the output of 6 times 7.

result <- 6*7


#### INTERLUDE ####

# You've made a lot of changes to this file. Go ahead and create a new commit in
# GitHub Desktop and sync these changes with the GitHub repository.

#### ARRAYS / VECTORS ####

# Arrays are sets of values that have been grouped together in an order. 
# In R, you can create an array using the C() function (short for Combine).
# Run the line below.

my.array <- c(1,3,5,7,9)

# You can access the value of an element in the array by using it's location
# in the array.
# Note for experienced programmers: The first element in a R array is indexed at 
# location 1, not location 0 like most languages.

my.array[2]

# If you wanted to get the value 7 out of the array, how would you do that?

my.array[4]

# You can get more than one element out of an array at a time. Use an array to specify
# the locations that you want to extract.

my.array[1:3]
my.array[c(1,5)]

# How would you get just the second and fourth elements?

my.array[c(2,4)]

# To change the value of an element in an array, just assign it a new value like it is
# a variable

  my.array[1] <- 10

# There are some shortcuts for creating arrays. The : operator can be used to create
# sequences of integers

  sequence <- 1:10

# Or, more generally, there is a function that you can use called seq()

sequence <- seq(from=1, to=10)

# You can look up information about a function by putting a question mark before the
# name of a function, and then running the line.

?seq

# Notice that the bottom right panel of RStudio changed to show you the documentation
# of the function. R documentation can be a little bit hard to read. You can also
# find an endless supply of examples with Google. Stack Overflow is a particularly
# useful site for finding great examples.

# Try generating a sequence below from 0 to 100 in steps of 10. (e.g., 0, 10, 20, ...)
# Read the documentation on seq to figure out what you need to change.

seq(0,100,10)

# You can use basic mathematical operators with vectors and scalars
# (A scalar is a vector with a single element, or, in plain English, just a number).

my.array <- c(1,2,3,4)
my.array <- my.array * 2

# Notice that each element of the array was multiplied by 2.

# You can also use basic mathematical operators with vectors and vectors.

array.a <- c(1,2,3,4)
array.b <- c(5,6,7,8)
array.c <- array.a + array.b

# What happens if array.a and array.b have different numbers of elements?
# Test it out below, and then write a short description of what is happening
# in a comment.

array.a <- c(1,2,3,4)
array.b <- c(5,6,7,8,9)
array.c <- array.a + array.b
# A warning message appears in red in the console: 
#"Warning message:
#In array.a + array.b :
#longer object length is not a multiple of shorter object length"
# array.a and array.b cannot be added to create an array.c, since each array a lacks a fifth element to add to array.b's fifth element.
  
#### FINDING HELPFUL FUNCTIONS ####

# Use your best Google-fu to find a function in R that will do each of the following.
# HINT: There is a built-in R function for each of these.

# 1) Take the square root of 16

sqrt(16)

# 2) Create an array that is 10 repetitions of the number 3
#    e.g., (3, 3, 3, 3, 3, 3, 3, 3, 3, 3).

rep.int(3, 10)

# 3) Add all the numbers in the vector below.

add.me <- c(2,4,6,7,8,5,12) # the answer is 44

sum(add.me)
#or
sum(c(2,4,6,7,8,5,12))

# 4) Generate a random integer between 0 and 100.

sample(0:100, 1)


# (This might be a good moment to commit and push your code!)

#### EXTERNAL LIBRARIES ####

# As you search the internet for R code, you'll often find that good solutions
# are available in R packages. R packages are code that is not part of the 
# default R installation. R has a package management system that make it really
# easy to install packages. One way to install is with install.packages()

install.packages('dplyr')

# You can also use RStudio to install packages. Go to Tools > Install Packages.

# To load a package, use library()

library(dplyr)

#### DATA FRAMES ####

# Data frames are similar to a spreadsheet. There are a set of columns, which can
# be named, and a set of rows. Each row is a new entry (data point).

# You can create a data frame by using data.frame(), or through many other methods
# that return a data frame as their output.

trial.number <- 1:10
reaction.time <- c(1223, 1158, 975, 824, 528, 477, 489, 434, 465, 487)
correct.response <- c(TRUE, FALSE, TRUE, FALSE, TRUE, TRUE, TRUE, FALSE, TRUE, TRUE)

subject.data <- data.frame(
  trial = trial.number,
  rt = reaction.time,
  correct = correct.response
)

# You can access values in a data frame as if it is a two-dimensional array

subject.data[1, 'rt'] # Row 1, Column 'rt'
subject.data[1:5, 'rt'] # Rows 1 to 5, Column 'rt'
subject.data[,'rt'] # All rows, Column 'rt'
subject.data[1,] # Row 1, All Columns

# There are also many functions that you can use to access data in a data frame.

correct.trials <- subset(subject.data, correct==TRUE) # select only the rows where correct is TRUE

# You can use the $ operator to quickly extract a column

subject.data$rt # get the rt column

# You can assign a new column with the $ operator as well.

subject.data$log.rt <- log(subject.data$rt)

# One very useful R package for manipulating data frames is dplyr. If you ran the code
# in the section about R packages, then dplyr should be installed and loaded already.

# There is a helpful and straightforward tutorial on dplyr here:
# https://cran.rstudio.com/web/packages/dplyr/vignettes/introduction.html

# Later in the lab, it will be helpful to know how to use dplyr's summarise() method.
# This lets you quickly summarize a data frame by grouping variables.
# For example, suppose we want the mean RT for correct and incorrect responses in the
# subject.data data frame. Here's how we do that with dplyr

summary.data <- subject.data %>% group_by(correct) %>% summarise(mean_rt = mean(rt))

# dplyr will take some practice and getting used to. The %>% operator is particularly
# weird. I will explain this more in class in an upcoming class session.

#### BASIC PLOTTING ####

# R has a very powerful set of tools for creating plots.
# We will explore these more throughout the semester. For now, let's look
# at a few really basic plots.

# Scatter plot
# You can create a scatter plot by calling plot() with two arrays of numbers.

x <- 1:10
y <- c(1,3,2,5,3,6,8,5,7,9)
plot(x,y)

# Notice that the plot shows up in RStudio's bottom right panel.

# You can change this to a line plot by setting the type option:

plot(x,y,type='l')

#### YOUR OWN FUNCTIONS ####

# To write a function in R, use the function keyword.

add.two <- function(x) { return(x+2) }
add.two(10) # outputs 12

multiply.numbers <- function(x, y) {
  answer <- x * y
  return(answer) 
}
multiply.numbers(2,3) # outputs 6

# Notice that you can have different numbers of parameters, and that the output
# of the function is specified in return()

# Write a function that takes two numbers and returns a random integer that is between
# the two numbers (including both end numbers as possibilities).

# ANSWER NEEDED HERE.

#### A FEW MISC. EXTRAS ####

# There's loads more to learn about R. Each lab will introduce any new features of R that 
# are particularly helpful for the problems in that lab. Here are some features that will
# help you as you build your first model in the last part of the lab.

# Suppose you have a vector of values like the following:

sample.array <- c(4, 6, 5, 2, 5, 3, 4, 5, 6, 7, 8, 9)

# Let's imagine that we want to create a new vector that is the result of applying a 
# function to each value. For example, we want to take the logarithm of each value.
# Some R functions will automatically do this for us, and log() happens to be one of them.

log.sample.array <- log(sample.array)

# But there are other cases where we need to specify a customized function and apply it
# to each value of the array. One of the ways to do this is with sapply().

log.sample.array <- sapply(sample.array, function(x){ return(log(x)) })

# What's going on above? sapply() takes two mandatory arguments. The first is an array,
# and the second is a function. The function should take a single argument (which I have
# arbitrarily named 'x'). This function will be run on each element of the array, with the
# element of the array being passed into the function as x. Then sapply() will combine all
# these results back into a vector and return it.

# For example, in the above code, the first value of sample.array is 4. So the function
# evaluates as return(log(4)), and the first element of log.sample.array is log(4). Then
# the next value of sample.array is 6, so the second element of log.sample.array is log(6),
# and so on...

# Use sapply() to create a new array called 'answer'. To compute the array:
#  - Generate a random number between 0 and 1 (do this independently for each value in the array)
#    HINT: ?runif (short for random-uniform-distribution)
#  - If the random number is less than or equal to the element in input, then output TRUE
#  - Otherwise output FALSE

input <- seq(from=0, to=1, by=0.05)

# ANSWER NEEDED HERE.

# What if we want to run a function on more than one array, and store the result in an array?
# Consider the following:

sample.data <- data.frame(big.or.small = c('big','small','big','small'), value=c(1,3,7,8))

# Open sample.data using RStudio's viewer so you have a clear understanding of the data
# structure. In each row there are two values. The first column indicates "big" or "small",
# and the second column gives a value. Suppose we want to add a third column that has the
# value TRUE when the row is "big" and the value is greater than 5, OR when the row is
# "small" and the value is less than 5. This is similar to the situation with sapply(), 
# except that we need two arrays (the two columns) in order to generate the correct value.

# The function to do this is mapply(), which works just like sapply() except that it can take
# as many diferent parameters as you need.

sample.data$match <- mapply(function(big.or.small, value){
  if(big.or.small=='big') { return(value > 5) }
  if(big.or.small=='small') { return(value < 5) }
}, sample.data$big.or.small, sample.data$value)

# Notice that with mapply() the function is the first argument, whereas with sapply() the 
# array was the first argument.

# Use mapply below() to create a new array called 'answer'. The value of each element should be:
# TRUE if the corresponding element:
#   in input.1 is TRUE and input.2 is FALSE
#   in input.1 is FALSE and input.2 is TRUE
# FALSE if the corresponding element:
#   in input.1 is TRUE and input.2 is TRUE
#   in input.1 is FALSE and input.2 is FALSE
# (This is the exclusive-OR (XOR) problem)

input.1 <- c(TRUE, FALSE, FALSE, TRUE, TRUE, FALSE)
input.2 <- c(TRUE, TRUE, FALSE, FALSE, TRUE, TRUE)

# ANSWER NEEDED HERE.
