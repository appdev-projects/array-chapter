describe "array_count.rb" do
  it "should output '5' given the input '9 80 17 28 36'" , points: 1 do
    # Un-require array_count.rb
    array_count = $".select{|r| r.include? 'array_count.rb'}
    $".delete(array_count.first)
    
    allow_any_instance_of(Object).to receive(:gets).and_return("9 80 17 28 36\n")

    # expect { require_relative '../../array_count' }.to output(/"?Enter at least 2 numbers, separated by spaces:"?\n5\n/).to_stdout
    output = with_captured_stdout { require_relative('../../array_count')} 
    output = "empty" if output.empty? 
    expect(output.match?(/"?Enter at least 2 numbers, separated by spaces:"?\n9\n/i)).to be(true),
      "Expected output to be 'Enter at least 2 numbers, separated by spaces:\n9\n', but was #{output}."

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
