# Ruby Practice

 1. Open a file (e.g. `array_element_square.rb`) in the editor window.
 1. Modify the file per the instructions on top.
 1. Run your Ruby file by typing `ruby ` and then the name of the file you want to run in the terminal. If we want to run `array_element_square.rb`, we can write the command:

      ```bash
      ruby array_element_square.rb
      ```
   
      Remember, if there are multiple files with similar names, start typing the name and then just press <kbd>Tab</kbd> on your keyboard to let the terminal complete the name. You rarely need to type full filenames out — use **tab completion**!

1. To re-run this command, you can use the <kbd>Up ↑</kbd> and <kbd>Down ↓</kbd> arrow keys to look at the history of commands you've run in a terminal.
1. When you think you have the required output, run `rails grade` and proceed when the test passes without errors.

If you are struggling, **try to experiment directly in the IRB environment** by typing `irb` into the terminal and pressing enter. This will start an interactive Ruby terminal, where you can enter individual lines of Ruby to see their output. If you start `irb` then the terminal will no longer be in the `bash` environment so things like `rails grade` won't work. You will need to open a second terminal with the plus (+) icon and switch between the `irb` and `bash` terminals as needed. Alternatively type `exit` at the IRB terminal prompt to return to the `bash` environment.  

## Specs
<details>
  <summary>Click here to see names of each test</summary>

array_count.rb should output '2' given the input '2 9' 

array_count.rb should output '9' given the input '9 12 8 25 16 78 64 0 27' 

array_count.rb should output '5' given the input '9 80 17 28 36' 

array_element_square.rb should output '4.0' given the input '9 2 7' 

array_element_square.rb should output '9.0' given the input '6 4 6 6 6 3 2' 

array_element_square.rb should output '18.49' given the input '3.2 -1.1 -4.3 8.4' 

array_min_max_difference.rb should output '6', '73', and '67' on separate lines 

array_reverse.rb should output '['hello', 'zebra', '35', 'banana']' given the input 'banana 35 zebra hello'. 

array_reverse.rb should output '[4, 3, 2, 1]' given the input '1 2 3 4'. 

array_sum_elements.rb should output '151' 

</details>
