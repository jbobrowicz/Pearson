require_relative "../lib/variance_function"

describe VarianceFunction do
  it "should return variance" do
    variance = VarianceFunction.new
    variance.apply([1, 2, 3]).should == [0.6666666666666666]
  end
end