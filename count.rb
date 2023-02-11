# Create an Array and use the count method to print 
# how many elements are in the Array.
# 
# Expected output (with input "4 10"):
#
#   "Enter at least 2 numbers, separated by spaces:"
#   4 10
#   2

p "Enter at least 2 numbers, separated by spaces:"

user_string = gets.chomp

user_numbers = user_string.split


# ~~~~~ Specs (make it do these things) ~~~~~
#
# count.rb should output '2' given the input '2 9' 
#
# count.rb should output '9' given the input '9 12 8 25 16 78 64 0 27' 
#
# count.rb should output '5' given the input '9 80 17 28 36' 
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~