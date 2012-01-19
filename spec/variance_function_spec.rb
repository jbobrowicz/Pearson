require_relative "../lib/variance_function"

describe VarianceFunction do
  it "should return variance" do
    variance = VarianceFunction.new
    variance.apply([1, 2, 3]).should == [1]
  end
end