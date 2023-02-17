# Ask the user to enter at least 2 numbers and store their input.
# The starting code below does this for you. 
# Use the `count` method to prtin how many numbers the user entered.
# 
# Expected output:
#   "Enter at least 2 numbers, separated by spaces:"
#   42 5 3 8 # user's input
#   4

p "Enter at least 2 numbers, separated by spaces:"

user_string = gets.chomp

user_numbers = user_string.split
