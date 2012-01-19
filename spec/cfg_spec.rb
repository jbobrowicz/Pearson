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
end