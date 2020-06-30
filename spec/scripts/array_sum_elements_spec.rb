describe "array_sum_elements.rb" do
  it "should output '151'" , points: 1 do
    sum_elements_file = "array_sum_elements.rb"
    file_contents = File.read(sum_elements_file)
    File.foreach(sum_elements_file).with_index do |line, line_num|
      if line.include?("p") || line.include?("puts")
        expect(line).to_not match(/151/),
          "Expected 'array_sum_elements.rb' to NOT literally print '151', but did anyway."
      end
    end
    expect { require_relative '../../array_sum_elements' }.to output(/151\n/).to_stdout
  end
end
