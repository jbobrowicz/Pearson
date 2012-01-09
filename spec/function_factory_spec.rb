require_relative "../lib/function_factory"

describe FunctionFactory do
  it "should create identity function" do
    identity = FunctionFactory.create_function(["identity"])
    identity.should be_an IdentityFunction
  end
  it "should create mean function" do
    mean = FunctionFactory.create_function(["mean"])
    mean.should be_an MeanFunction
  end
  it "should create median function" do
    median = FunctionFactory.create_function(["median"])
    median.should be_an MedianFunction
  end
end
