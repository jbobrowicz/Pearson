require File.join(File.dirname(__FILE__), "../lib/planner")

describe Planner do
  def planner_output_for(function, input)
    output = StringIO.new
    planner = Planner.new([function], StringIO.new(input), output)
    planner.run
    output.string 
  end
  it "should calculate the mean of one number" do
    planner_output_for("mean", "10").should == "10.0"
  end
  it "should calculate the mean of two numbers" do
    planner_output_for("mean", "10,20").should == "15.0"
  end
  it "should support identity" do
    planner_output_for("identity", "10,20").should == "10.0,20.0"
  end
  it "should output error message for an unsupported function" do 
    planner = Planner.new(["bbbbbbbb"], StringIO.new("10,20"), StringIO.new)
    lambda { planner.run }.should raise_error
  end
end
