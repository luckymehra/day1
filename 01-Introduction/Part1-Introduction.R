# 
# Let's get familiar with R 
# =========================
# 
# In this section we will investigate the following questions:
#  [[  How does R understand data?  ]]
# 
#  1. How to use this script and R
#  2. Creating objects and using logicals
#  3. Sequences and vectors (1-D)
#  
# Step 1: How to use this R script
# ---------------------------------
# 
# A script is a text document that contains instructions and commands. The # 
# symbol is used to leave comments, which R will not try to interpret as a 
# command.
# 
# The console (below) is for submitting commands to be interpreted in R. To run 
# a command in the console, you can copy+paste it into the console and press 
# enter.
# 
# Copy and paste the following into the console and run it:

print("the instructor's name is Lucky")  

# Run a single line of your script in the console by placing your cursor on the 
# line you want to submit and use your cursor to press the "Run" button at the 
# top right. You can also use the shortcut key strokes cmd+enter (mac) or 
# ctrl+enter (PC) to run a single line at a time.
# 
# The two other most important keyboard shortcuts that you'll want to use are the
# *Tab* key to auto-complete your typing at the command line and ctrl+up arrow or
# cmd+up arrow to access the most recently typed commands.
# 
# You can also select only part of a line to have it run on the console. 
# 
# Let's do an exercise: 
# 
# ### Exercise 1: Use the function `print` to print the sentence 
# ### "my name is ____".

print("my name is Sang")

# R can also be used to perform calculations, such as the following:

5 + 1 / 3

# What rules does R apply for the order of operations and how do you find out?
# 
# Let's modify the statement above to see if adding parentheses changes the
# result:

(5 + 1)/3

# Does it matter if there are spaces added into this?
# 
 (     5    +    1 ) / 3

# That shows us that the spaces did not matter for the calculation.
# 
# R also has some pre-defined mathematical terms that you can use, such as pi.
# 
# What is pi times pi ?

pi*pi

pi^2   # this does the same thing because ^ is, here, interpreted as "taken to the exponent"

# 
# Step 2: Creating objects and using logicals
# --------------------------------------------
# 
# Objects are like shortcuts.  They are a way to store data without having to 
# re-type them.  By virtue, objects are only created once something has been 
# assigned to them.  Anything can be stored in an object, including figures!

# Let's repeat our simple math calculation above, this time using objects. If we
# want to calculate (5+1)/3 using objects, it needs to look like this: (a+b)/c
# The objects a, b, and c do not exist yet, so we need to assign values to them
# in order to create them. R interprets the less than symbol and dash as
# "assign". It is advisable to learn the keyboard shortcut for this, which is `Alt` + `-`.  So we need 
# to do the following:

a <- 5  # assign the number 5 to a
b <- 1  # assign number 1 to b
c = 3   # we can also use `=` to assign 3 to c. But `<-` is the preferred assignment
        # operator as `=` is used to call arguments in function calls.

# As you are assigning these numbers to objects, they appear in your environment
# (top right).  These objects are not being saved to a hard drive, they are
# stored only in the memory of your computer.
# 
# > **NOTE** if you assign something to an object that already exists, R will do
# > what you tell it and overwrite that obect with the new assignment.
# 
# Now we can execute our calculation using objects instead of numbers.  Try it!

(a+b)/c

# Avoid creating object names that start with a number because R will look at
# the first character and try to interpret the entire name as a mathematical
# term.  Try this:

# `2foxes <- 1`  

foxes <- 1

# The error here tells us that something went wrong and R cannot proceed.
# 
# If we want to assign (a+b)/c to a new object called `answer` -- what will the
# object contain?  Find out:

answer <- (a+b)/c

# Take a look at the object `answer` by typing the name into the command line:

answer

# What would you get if you multiplied answer by 2?

answer*2

# We can also use logical operations in R.  The answer to a logical question is
# always TRUE or FALSE.

# Is `a` greater than `b`?
a > b # You can look at the Values on your right to check the answer.
 
# Is `b` greater than 10?   
b > 10

# Is `b + c` greater than `a`?  
b + c > a 

# R will first evaluate the algebraic operation (`+`) and then evaluate the  
# logical operation (`>`). So, we don't need to use `(b+c) > a`.

# Is `a` equal to 7?  
a = 7 

# Oops! We did not get any answer. What went wrong? Let's print `a`.

a

# `a = 7` changed the value of `a` to '7'.  So, how do we find if `a` is
# equal to '7'?

a == 7 # We need to put two '=' signs to check equality.

# Is `a` not equal to '7'?
a != 7 

# Are both `a` and `b` greater than c?
a > c & b > c

# Is either `a` or `b` greater than c?
a > c | b > c


# The examples above dealt with numeric values assigned to objects. We can also
# store character data in objects.  We need to place the character data (words,
# phrases, etc.) inside quotation marks, otherwise R will try to interpret
# the character data as an object and will produce an error.
# 
# Let's use my name for this exercise.  Let's create two objects, one for my
# first name and another for my last name.  

first.name <- "Lucky"
last.name <- 'Mehra'  # Single quotes work too!

# We now have those two objects.  Let's look at them.

first.name
last.name

# Since we each have a first name and a family name, let's do another exercise.
# 
# ### Exercise 2: Modify the objects `first.name` and `last.name` so that 
# ### instead of my name, they contain your name. 

first.name <- "Lucky"  # Replace ____ with your own name
last.name <- "Mehra"

# Did this work?  Let's look at the two objects:

first.name
Last.name

# Oops!  What went wrong?  R is case-sensitive, so `last.name` is interpreted 
# differently than `Last.name`. Let's try again:

first.name
last.name # It works!

# Using a function c() we can tell R to *combine* these two objects.  This
# function will combine values from the first object with the second object and
# return them as a single observation.  Let's try it:

c(first.name, last.name)

# Notice how the names are returned inside quotation marks, which tells us that
# these are interpreted as character data in R. You'll also notice that each
# name is placed inside quotes and that's because c() combined names into a
# single vector that contains two elements, your first and your last name.  This
# brings us to the next step in our introduction, vectors.
# 

# Step 3: Vectors and sequences 
# ------------------------------
# 
# Up to here, the objects we've created only contained a single element. You can 
# store more than one element in a 1-dimensional object of unlimited length. Let's
# create an object that is a vector of our first and last names using the two
# objects that we created previously.
# 
# *Avoid re-typing your commands.* Since the last command that we ran contained 
# what we want, we can simply use the up arrow to access the most recently 
# submitted command and modify it. You can also access the *History* tab in the 
# top right panel of RStudio or, at the command line, access a list of the most 
# recent commands using the cmd + up arrow OR the ctrl + up arrow.

name <- c(first.name, last.name)

# We can inspect this object by typing *name* at the command line. We can
# inspect the structure of this object using the function str() on name.

str(name)

# This shows us that this is a vector because the elements in it are ordered from 1
# to 2 as shown by the [1:2]. This also tells us that this list is a *character*
# list, which is indicated by the *chr* label. We also see the two elements in this
# vector, which is your first and last name.
# 
# What is the length of your name?  We can find out using the function length()

length(name)

# Let's compare this to a vector that contains only numeric data. For this 
# example, let's create three objects to represent today's date in numbers for
# the month (06), day (01), and year (2020).

month <- 06
day <- 01
year <- 2020

# combine those three objects using the *combine* function:
today <- c(month, day, year)

# Inspect this object by typing the name `today` at the command line. You'll see
# that R has eliminated the zero that preceeds the 1 and has kept the order we 
# provided for these elements in the vector.  Let's take a look at the structure of
# today.

str(today)

# You'll notice that the vector has three elements [1:3], and it contains only 
# numeric data.
# 
# Let's do the same thing using the name June for month and see how that changes
# our vector. Notice that we are not modifying the object *month*, we are simply
# combining our two existing objects with the word "November".

c("June", day, year)   

# In this case we didn't re-assign the object named `today`. To inspect the 
# structure of this vector, we can wrap the statement within the str() function,
# as shown below. We also want to inspect the data class (ie. whether numeric or 
# character) using the function class().  Don't forget to use the up-arrow to
# access the last line that you ran!

str(c("June", day, year)) # this shows us the structure of the object
class(c("June", day, year))

# Notice how R is trying to keep our data organized according to type.  Rather
# than coding this vector as containing numbers and characters, it has decided
# that because it can't call everything in our vector a number that it will call
# everything characters. This process is called *coercion*.
# 
# Let's say we wanted to create a table that showed every date this month:
# 
# ```
#   day   month   year
#   1     6       2020
#   2     6       2020
#   3     6       2020
#   ...
# ```
# 
# We know there are 30 days in the month, so we can modify the object day to
# contain all of the 30 days in this month. Instead of typing each number out by
# hand, we can place a colon (`:`) between 1 and 30, which is a shortcut in R
# for creating sequences of numbers.

1:30

# You see in the console that this created a sequence of 30 numbers from 1 to
# 30. Let's go ahead and assign this to the object `day`.

day <- 1:30

# For the objects month and year, we don't need to modify them, however, we want
# to repeat each of them a total of 30 times because we need to repeat each, 
# once for each day.
# 
# We can easily repeat the number 11 a total of 30 times using the function 
# `rep()`, specifying how many `times` we should repeat this object. Let's
# assign `11` to `month` and modify the object month to contain 30 copies.

month <- 6
month <- rep(month, times = 30)
month

# Let's check to make sure that month is correct using the function `length()`:

length(month)

# There are 30 elements in this vector, and we can inspect individual elements in the
# vector based on their ordered position using square brackets:

day[18]  
month[18] # the number inside the brackets corresponds to location of element in list, not value

# In this case, the 18th element in `day` is 18, and the 18th element in `month` is 11
# which confirms that we created this correctly.
# 
# > Type `day[32]` into your R console. What do you get? What does it mean? Ask
# > yourself the question, "Are there any months with 32 days?"
# 
# We can create the object `year` to contain 30 repeats of 2019, however, this 
# time, let's say we wanted to make sure that this object was always the same
# length as the number of days we have in a month. Instead of specifying `30`,
# we can simply get that information using the `length()` function. Here, we'll
# replace `30` with `length(day)`, which is equivalent.

year <- rep(2020, times = length(day))
year
length(year)

# We now have three vectors to create our table, and they are exactly the same length:

length(day)
length(month)
length(year)
