#!/bin/bash

echo "Please enter username:: "

read -s USERNAME    # -s is for hide the username or password

echo "please enter password:: "

read -s PASSWORD

echo "Username is: $Username pasword is: $Password"


#this code for reference
# Write a Bash script which accepts name as input and displays the greeting "Welcome (name)"

#!/bin/bash
# This is a comment. It won't be executed.

# This line prompts the user to enter their name.
read -p "Please enter your name: " name

# This line prints the greeting to the console.
echo "Welcome $name"

# # Sure, I'd be happy to explain each element in the line 
# read -p "Please enter your name: " name.

# # read: This is a built-in bash command that reads input from the user.

# # -p: This is an option flag that specifies a prompt message to display before reading the input. 
# In this case, the prompt message is "Please enter your name: ".

# # "name": This is the variable name that will store the input provided by the user. In this case, 
# the input will be stored in the variable name.

# # So, when you run the script and see the prompt "Please enter your name: ", 
# you can type your name and press enter. The input will be stored in the name variable, 
# which can then be used in the script