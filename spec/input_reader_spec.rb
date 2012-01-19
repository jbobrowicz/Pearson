require_relative "../lib/input_reader"
require_relative "../lib/cfg"

describe InputReader do
  it "should have method read_numbers" do
    cfg = Cfg.new("", StringIO.new("10,15"))
    input_reader = InputReader.new(cfg)
    input_reader.read_numbers
  end
  it "should return an array" do
    cfg = Cfg.new("", StringIO.new("10,15"))
    input_reader = InputReader.new(cfg)
    input_reader.read_numbers.should be_an Array
  end
  it "should return an array of numbers read from a stream" do
    cfg = Cfg.new("", StringIO.new("10,20"))
    input_reader = InputReader.new(cfg)
    input_reader.read_numbers.should == [10.0,20.0]
  end
end
