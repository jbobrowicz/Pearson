class OutputWriter
  def initialize(output)
    @output = output
  end
  def write_output(items)
    @output << items.map {|n| n.to_s}.join(",")
  end
end
  

describe OutputWriter do
  def output_of_writer(input)
    output = StringIO.new
    output_writer = OutputWriter.new(output)
    output_writer.write_output(input)
    output.string
  end
  
  # pierwszy rodzaj testów "concrete tests" lub "data driven test"
  
  it "should output empty array" do
    output_of_writer([]).should == ""
  end  
  it "should output single number" do
    output_of_writer([1]).should == "1"
  end

  it "should output multiple numbers" do
    output_of_writer([1,2,3]).should == "1,2,3"
  end
  
  # drugi rodzaj testów "interaction test" lub "mock based test"
  
  it "should output objects supporting conversion to string" do
    x = mock "x"
    y = mock "y"
    x.should_receive(:to_s).and_return("a")
    y.should_receive(:to_s).and_return("b")
    output_of_writer([x, y]).should == "a,b"
  end
end
