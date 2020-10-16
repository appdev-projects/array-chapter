describe "array_count.rb" do
  it "should output '5' given the input '9 80 17 28 36'" , points: 1 do
    # Un-require array_count.rb
    array_count = $".select{|r| r.include? 'array_count.rb'}
    $".delete(array_count.first)
    
    allow_any_instance_of(Object).to receive(:gets).and_return("9 80 17 28 36\n")

    expect { require_relative '../../array_count' }.to output(/"?Enter at least 2 numbers, separated by spaces:"?\n5\n/).to_stdout
  end
end
