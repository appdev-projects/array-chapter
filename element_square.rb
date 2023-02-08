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


# ~~~~~ Specs (make it do these things) ~~~~~
#
# element_square.rb should output '4.0' given the input '9 2 7' 
#
# element_square.rb should output '9.0' given the input '6 4 6 6 6 3 2' 
#
# element_square.rb should output '18.49' given the input '3.2 -1.1 -4.3 8.4' 
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~