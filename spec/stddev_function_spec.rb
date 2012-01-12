require_relative "../lib/stddev_function"

describe StddevFunction do
  it "should return stddev" do
    std = StddevFunction.new
    std.apply([1, 2, 3]).should == [1.4142135623730951]
  end
end