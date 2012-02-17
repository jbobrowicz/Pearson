require_relative "../lib/cfg"

describe Cfg do	
  it "should be able to initialize new config" do	
    Cfg.new
  end
  it "should have output_format method" do	
    cfg = Cfg.new
    cfg.output_format
  end	
  it "should have output method" do
    cfg = Cfg.new
    cfg.output
  end	
  it "should have input method" do
    cfg = Cfg.new
    cfg.input
  end
  it "should have function method" do
    cfg = Cfg.new
    cfg.function
  end
  it "should be able to set function" do
    cfg = Cfg.new("mean")
    cfg.function.should eql "mean"
  end
  it "should be able to set output_format" do
    cfg = Cfg.new(nil, nil, nil, "html")
    cfg.output_format.should eql "html"
  end
  it "should be able to set input" do
      input = "identity"
      cfg = Cfg.new(nil, input, nil, nil)
      cfg.input.should eql input
    end
  it "should be able to set output" do
      output = "identity"
      cfg = Cfg.new(nil, nil, output, nil)
      cfg.output.should eql output
    end
end