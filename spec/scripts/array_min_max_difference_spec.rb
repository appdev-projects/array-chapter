describe "array_min_max_difference.rb" do
  it "should output '6', '73', and '67' on separate lines" , points: 1 do

    expect { require_relative '../../array_min_max_difference' }.to output(/"?6"?\n"?73"?\n"?67"?\n/).to_stdout
  end
end
