describe "array_reverse.rb" do
  it "should output ['hello', 'zebra', '35', 'banana'] given the input 'banana 35 zebra hello'." , points: 1 do
    allow_any_instance_of(Object).to receive(:gets).and_return("banana 35 zebra hello")

    expect { require_relative '../../array_reverse' }.to output(/\["hello", "zebra", "35", "banana"\]/).to_stdout
  end
end
