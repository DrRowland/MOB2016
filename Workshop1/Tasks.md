# IBM Bluemix Challenge, 2015

## Question 1: Factorials

The factorial of a number is a multiple of all integers between 1 and that number inclusive. For example, the factorial of 5 (expressed as 5!) would be 5x4x3x2x1 = 120.

Write a program that calculates the factorial of each input value.
Input data

The input will consist of a series of positive integers between 1 and 15 inclusive, each on a line by itself. The end of the input data file will be signified by a line with a # mark as the first character.
Output data

You should output, one answer per line, the factorial of each given number, in the format shown in the sample output below.
Sample input

    1
    4
    3
    #

Sample output

    1
    24
    6

## Question 2: Change

You are writing a software module for a ticket machine that will be based at a railway station. Your module controls how the ticket machine gives change to customers who pay by cash.

Your module will be provided with a number of data sets. Each data set has two elements: the list of coins available, and the amount of money that needs to be dispensed to the customer as his or her change for the ticket they just bought. The program must decide the set of coins to be dispensed on the basis that:

    As few coins as possible must be dispensed.
    If there is more than one way to dispense the minimal number of coins, higher denomination coins take precedence.

For each data set there must be exactly one output line. You may assume that if a coin denomination is listed in the coin list, there is sufficient stock of that coin to service the requirement. You may also assume that each denomination will be listed at most once in a data set.
Input data

Each transaction your program deals with is represented by a line in the input file. The line begins with a comma-separated list of coin denominations available (in pence), followed by a colon, followed by the amount of money (in pence) that needs to be served to the customer. The coin list may be in any order, i.e. the denominations are not necessarily sorted in any way.

For example, imagine we have coins with values of £1 (100p), 50p, 20p, 10p, 5p, 2p and 1p and we wish to give the customer 57p. The input line would be:

    100,50,20,10,5,2,1:57

The input data may contain space or tab characters, which must be ignored. The end of the input data file will be signified by a line with a # mark as the first character. You may assume that there will be no more than 20 coin denominations, that no line will be more than 100 characters in length, and that there are no malformed lines.
Output data

You must list the coins that are to be dispensed. For each coin, state its denomination, followed by 'x', followed by the quantity of that coin that must be dispensed. Coin outputs must be separated with commas. Coins must be listed in descending order of denomination. So the answer for the above example would be:

    50x1,5x1,2x1

... as the most efficient way to dispense 57p from the given set of coins is a single 50p, one 5p and one 2p. There should be no spaces or other whitespace in the output data, and the termination line in the input file (the one beginning with #) should have no corresponding line in the output file.
Sample input

    100,50,20,10,5,2,1:57
    100, 10, 50, 20, 5, 2, 1:36
    #

Sample output

    50x1,5x1,2x1
    20x1,10x1,5x1,1x1

## Question 3: Simultaneous equations

Given a pair of simultaneous equations, it is possible to deduce the values of the variables contained therein. Imagine, for instance, we have the following pair of simultaneous equations:

    4x+3y=24 (call this equation [1])
    5x+y=19 (call this equation [2])

Using simple GCSE-level mathematics, we can calculate the value of x thus:

    Multiply [2] by 3 throughout: 5x+y=19 becomes 15x+3y=57
    Subtract 15x from both sides: 15x+3y=57 becomes 3y=57-15x
    Subtract 4x from both sides of [1]: 4x+3y=24 becomes 3y=24-4x
    Because 3y=57-15x (from [2]) and 3y=24-4x (from [1]) we can say 57-15x = 24-4x
    Subtract 24 from both sides: 33-15x = -4x
    Now add 15x to both sides: 33=11x
    Finally, divide both sides by 11: 3=x (or x=3).
    Now we know that x=3, we can substitute its value into one of the equations. 4x+3y=24 [1] becomes 4x3+3y=24, or 12+3y=24
    Subtract 12 from both sides: 3y=12
    Divide both sides by 3: y=4
    We have therefore deduced that x=3 and y=4.

Write a program that takes a series of pairs of simultaneous equations, and computes x and y in each case. Each equation takes the form:

    NxSMy=R

... where:

    N and M are either blank or an integer between 1 and 100 inclusive
    S is a sign, either + or -
    R is an integer between -5000 and 5000 inclusive

Each equation in a pair will appear on a separate line, and will always contain some multiple of x and y. Each pair will be followed by a single # mark on a line by itself. The end of the input stream will be denoted by the '##' mark on a line by itself. The elements of any equation will be separated by zero or more elements of whitespace (either spaces or tab characters).

Your program should write a solution for each pair of equations, each on a line by itself and each of the form:

    x=P and y=Q

... where P and Q are integers between -40 and 40 inclusive. You may assume that every equation set is solvable, and that there is only one possible value for each of x and y for any pair of equations.
Sample Input

    4x+3y=24
    5 x + y =19
    #
    2x+y=3
    3x-y=2
    #
    ##

Sample Output

    x=3 y=4
    x=1 y=1

For all three questions...

Each program should be implemented in Bluemix thus:

The judges should be able to access the program to run it via the URLs provided to us in your entry submission.

When the judge visits a program solution he or she should be presented with an input screen containing only the following:

    A heading, of the form "Question <x> Data Input" where <x> is the question number.
    A multi-line text box into which the judge can paste the secret test data.
    A button labelled "Run" which, when clicked, will run the program.

Once the program has run it should present the output of the program on an output screen containing only the following:

    A heading, of the form "Question <x> Results" where x is the question number.
    The program output, in the format specified in the question, and in a fixed-width font (e.g. Courier).
    The output screen must contain no output except as specified (i.e. no debug statements, etc).
    The solution for each question must be implemented as a single code file - no vast number of code libraries and the like that are all cross-referenced.

Good Luck!

