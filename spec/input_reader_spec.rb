require File.join(File.dirname(__FILE__), "../lib/input_reader")

describe InputReader do
  it "should have method read_numbers" do
    input_reader = InputReader.new(StringIO.new("10,15"))
    input_reader.read_numbers
  end
  it "should return an array" do
     input_reader = InputReader.new(StringIO.new("10,15"))
     input_reader.read_numbers.should be_an Array
  end
  it "should return an array of numbers read from a stream" do
    input_reader = InputReader.new(StringIO.new("10,20"))
    input_reader.read_numbers.should == [10.0,20.0]
  end
end
