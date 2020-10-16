describe "array_element_square.rb" do
  it "should output '9.0' given the input '6 4 6 6 6 3 2'" , points: 1 do
    # Un-require array_element_square.rb
    array_element_square = $".select{|r| r.include? 'array_element_square.rb'}
    $".delete(array_element_square.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("6 4 6 6 6 3 2\n")

    expect { require_relative '../../array_element_square' }.to output(/"?Enter at least 2 numbers, separated by spaces:"?\n9.0\n/).to_stdout
  end
end
