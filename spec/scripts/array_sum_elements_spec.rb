describe "sum_elements.rb" do
  it "should output '151'" , points: 1 do
    sum_elements_file = "sum_elements.rb"
    file_contents = File.read(sum_elements_file)
    File.foreach(sum_elements_file).with_index do |line, line_num|
      if line.include?("p") || line.include?("puts")
        expect(line).to_not match(/151/),
          "Expected 'sum_elements.rb' to NOT literally print '151', but did anyway."
      end
    end
    # expect { require_relative '../../sum_elements' }.to output(/151\n/).to_stdout
    output = with_captured_stdout { require_relative('../../sum_elements')} 
    output = "empty" if output.empty? 
    expect(output.match?(/151\n/i)).to be(true),
      "Expected output to be '151', but was #{output}."

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
