describe "array_reverse.rb" do
  it "should output '[4, 3, 2, 1]' given the input '1 2 3 4'." , points: 1 do

    # Un-require array_reverse.rb
    array_reverse = $".select{|r| r.include? 'array_reverse.rb'}
    $".delete(array_reverse.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("1 2 3 4\n")

    expect { require_relative '../../array_reverse' }.to output(/\["4", "3", "2", "1"\]\n/).to_stdout
  end
end
