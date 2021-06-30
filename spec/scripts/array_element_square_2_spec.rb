describe "array_element_square.rb" do
  it "should output '9.0' given the input '6 4 6 6 6 3 2'" , points: 1 do
    # Un-require array_element_square.rb
    array_element_square = $".select{|r| r.include? 'array_element_square.rb'}
    $".delete(array_element_square.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("6 4 6 6 6 3 2\n")

    # expect { require_relative '../../array_element_square' }.to output(/"?Enter at least 2 numbers, separated by spaces:"?\n9.0\n/).to_stdout
    output = with_captured_stdout { require_relative('../../array_element_square')} 
    output = "empty" if output.empty? 
    expect(output.match?(/"?Enter at least 2 numbers, separated by spaces:"?\n9.0\n/i)).to be(true),
      "Expected output to be 'Enter at least 2 numbers, separated by spaces:\"\\n9.0\n', but was #{output}."
  end
end

def with_captured_stdout
  original_stdout = $stdout  # capture previous value of $stdout
  $stdout = StringIO.new     # assign a string buffer to $stdout
  yield                      # perform the body of the user code
  $stdout.string             # return the contents of the string buffer
ensure
  $stdout = original_stdout  # restore $stdout to its previous value
end
