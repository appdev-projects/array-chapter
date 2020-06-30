describe "array_min_max_difference.rb" do
  it "should output '6', '73', and '67' on separate lines" , points: 1 do

    # expect { require_relative '../../array_min_max_difference' }.to output(/"?6"?\n"?73"?\n"?67"?\n/).to_stdout
    output = with_captured_stdout { require_relative('../../array_min_max_difference')} 
    output = "empty" if output.empty? 
    expect(output.match?(/"?6"?\n"?73"?\n"?67"?\n/i)).to be(true),
      "Expected output to be '6\\n73\\n67\n', but was #{output}."
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
