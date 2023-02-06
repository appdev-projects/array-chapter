# Print the square of the second-to-last number that the user enters.
# 
# The expected output will be something like:
# 
#   "Enter at least 2 numbers, separated by spaces:"
#   9.0
# 

p "Enter at least 2 numbers, separated by spaces:"

user_string = gets.chomp

user_numbers = user_string.split
