# should include all functions for planner to call
require_relative "../lib/function_factory"
#require_relative "output_writer_spec"

describe FunctionFactory do
  it "should create function" #do
  #new_function = FunctionFactory.new("", "", "")
  #new_function.create_function("") # todo ...
  #end
  it "should have method read_numbers" do
    input_reader = FunctionFactory.new("", StringIO.new("10,15"), "")
    input_reader.read_numbers
  end
  it "should have method write_output" do
    output_writer = FunctionFactory.new("", "", "")
    output_writer.write_output([])
  end
  it "should have method transform" #do
  # transform_function = FunctionFactory.new("mean", "", "")
  # transform_function.transform(1)
  # end
  it "should have method create_function" do
    new_function = FunctionFactory.new("", "", "")
    new_function.create_function("")
  end
  it "should output empty array" do
    #write_output = FunctionFactory.new("", [], "")
    #write_output.should == ""
  end
  it "should output single number" do
    #OutputWriter.output_of_writer([1]).should == "1"
  end

  it "should output multiple numbers" do
    #OutputWriter.output_of_writer([1,2,3]).should == "1,2,3"
  end
end
