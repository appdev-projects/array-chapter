describe "reverse.rb" do
  it "should output ['hello', 'zebra', '35', 'banana'] given the input 'banana 35 zebra hello'." , points: 1 do
    allow_any_instance_of(Object).to receive(:gets).and_return("banana 35 zebra hello\n")

    # expect { require_relative '../../reverse' }.to output(/\["hello", "zebra", "35", "banana"\]/).to_stdout
    output = with_captured_stdout { require_relative('../../reverse')} 
    output = "empty" if output.empty? 
    expect(output.match?(/\["hello", "zebra", "35", "banana"\]/i)).to be(true),
      "Expected output to be 'Enter at least 2 values, separated by spaces:\\n\[\"hello\", \"zebra\", \"35\", \"banana\"\]', but was #{output}."

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
