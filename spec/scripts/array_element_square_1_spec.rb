describe "array_element_square.rb" do
  it "should output '4.0' given the input '9 2 7'" , points: 1 do
    
    allow_any_instance_of(Object).to receive(:gets).and_return("9 2 7")

    expect { require_relative '../../array_element_square' }.to output(/"?Enter at least 2 numbers, separated by spaces:"?\n4.0\n/).to_stdout
  end
end
