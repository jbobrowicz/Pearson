require_relative "../lib/mean_function"

describe MeanFunction do
  it "should return mean" do
    m = MeanFunction.new
    m.apply([1, 2, 3]).should == [2]
  end
end
