# Create an Array and use the reverse method 
# to return the array in reverse order.
#
# Expected output (with input "0 first second"): 
#
#   "Enter at least 2 values, separated by spaces:"
#   0 first second
#   ["second", "first", 0]

p "Enter at least 2 values, separated by spaces:"

user_string = gets.chomp

user_numbers = user_string.split


# ~~~~~ Specs (make it do these things) ~~~~~
#
# reverse.rb should output '['hello', 'zebra', '35', 'banana']' given the input 'banana 35 zebra hello'. 
#
# reverse.rb should output '[4, 3, 2, 1]' given the input '1 2 3 4'. 
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~