require_relative "../lib/function_factory"

describe FunctionFactory do
  it "should create identity function" do
    identity = FunctionFactory.create_function("identity")
    identity.should be_an IdentityFunction
  end
  it "should create mean function" do
    mean = FunctionFactory.create_function("mean")
    mean.should be_an MeanFunction
  end
  it "should create median function" do
    median = FunctionFactory.create_function("median")
    median.should be_an MedianFunction
  end
  it "should create variance function" do
    var = FunctionFactory.create_function("variance")
    var.should be_an VarianceFunction
  end
  it "should create stddev function" do
    stddev = FunctionFactory.create_function("stddev")
    stddev.should be_an StddevFunction
  end
end
