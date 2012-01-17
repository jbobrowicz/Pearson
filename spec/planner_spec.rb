require_relative "../lib/planner"
require_relative "../lib/cfg"

describe Planner do
  def planner_output_for(cfg)
    output = StringIO.new
    #planner = Planner.new([function], StringIO.new(input), output)
    planner = Planner.new(cfg)
    planner.run
    output.string
  end
  it "should calculate the mean of one number" do
    #planner_output_for("10").should == "10.0"
  end
  it "should calculate the mean of two numbers" do
    #planner_output_for("mean", "10,20").should == "15.0"
  end
  it "should support identity" do
    #planner_output_for("identity", "10,20").should == "10.0,20.0"
  end
  it "should output error message for an unsupported function" do
    # code = lambda do
    #       planner = Planner.new(["bbbbbbbb"], StringIO.new("10,20"), StringIO.new)
    #       planner.run
    #     end
    #     code.should raise_error
  end
end
