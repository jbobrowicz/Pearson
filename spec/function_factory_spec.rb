require_relative "../lib/function_factory"
require_relative "../lib/cfg"

describe FunctionFactory do
  it "should create identity function" do
    cfg = Cfg.new("identity")
    identity = FunctionFactory.create_function(cfg)
    identity.should be_an IdentityFunction
  end
  it "should create mean function" do
    cfg = Cfg.new("mean")
    mean = FunctionFactory.create_function(cfg)
    mean.should be_an MeanFunction
  end
  it "should create median function" do
    cfg = Cfg.new("median")
    median = FunctionFactory.create_function(cfg)
    median.should be_an MedianFunction
  end
  it "should create variance function" do
    cfg = Cfg.new("variance")
    var = FunctionFactory.create_function(cfg)
    var.should be_an VarianceFunction
  end
  it "should create stddev function" do
    cfg = Cfg.new("stddev")
    stddev = FunctionFactory.create_function(cfg)
    stddev.should be_an StddevFunction
  end
end
