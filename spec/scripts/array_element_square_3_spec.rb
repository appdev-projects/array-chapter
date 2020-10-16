describe "array_element_square.rb" do
  it "should output '18.49' given the input '3.2 -1.1 -4.3 8.4'" , points: 1 do
    # Un-require array_element_square.rb
    array_element_square = $".select{|r| r.include? 'array_element_square.rb'}
    $".delete(array_element_square.first)
    
    allow_any_instance_of(Object).to receive(:gets).and_return("3.2 -1.1 -4.3 8.4\n")

    expect { require_relative '../../array_element_square' }.to output(/"?Enter at least 2 numbers, separated by spaces:"?\n18.49\n/).to_stdout
  end
end
