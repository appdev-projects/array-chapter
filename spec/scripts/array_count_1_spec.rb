describe "array_count.rb" do
  it "should output '2' given the input '2 9'" , points: 1 do
    allow_any_instance_of(Object).to receive(:gets).and_return("2 9\n")

    expect { require_relative '../../array_count' }.to output(/"?Enter at least 2 numbers, separated by spaces:"?\n2\n/).to_stdout
  end
end
