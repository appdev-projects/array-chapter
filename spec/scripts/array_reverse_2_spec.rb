describe "reverse.rb" do
  it "should output '[4, 3, 2, 1]' given the input '1 2 3 4'." , points: 1 do

    # Un-require reverse.rb
    reverse = $".select{|r| r.include? 'reverse.rb'}
    $".delete(reverse.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("1 2 3 4\n")

    output = with_captured_stdout { require_relative('../../reverse')} 
    output = "empty" if output.empty? 
    expect(output.match?(/\["4", "3", "2", "1"\]\n/i)).to be(true),
      "Expected output to be 'Enter at least 2 values, separated by spaces:\\n\[\"4\", \"3\", \"2\", \"1\"\]\n]', but was #{output}."

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
