#!/bin/bash

No1=$1
No2=$2

sum=$(($No1+$No2))

echo "sum of $No1 and $No2 is:$sum"



# #!/bin/bash

# # Read the two integers from the user
# read num1
# read num2

# read: This is a built-in command in Bash that is used to read input from the standard input (usually the keyboard).
# num1: This is a variable where the input will be stored.
# So, when you run this line, the program will pause and wait for you to enter a number.
# Once you enter a number and press Enter,
# that number will be stored in the variable num1 for later use.

# # Calculate the sum, difference, product, and quotient
# sum=$(($num1 + $num2))
# difference=$(($num1 - $num2))
# product=$(($num1 * $num2))
# quotient=$(($num1 / $num2))

# # Print the results   

# echo "Sum: $sum"
# echo "Difference: $difference"
# echo "Product: $product"
# echo "Quotient: $quotient"   
