class FunctionFactory
  def initialize(argv, input, output)
    @input = InputReader.new(input)
    @output = OutputWriter.new(output)
    @function = argv[0] #FunctionFactory.create_function(argv)
  end
  def create_function(argv)
    # create function here ...
  end
  def read_numbers
    @input.read_numbers
    #@input.read.split(",").map { |s| s.to_f }
  end
  def transform(numbers)
    # @function.apply(numbers)
    case @function
    when "identity"
      numbers
    when "mean"
      [numbers.inject(0) {|acc, n| acc + n} / numbers.size]
    else
      raise "Error: Unsupported function #{@function}"
    end
  end
  def write_output(result)
    @output.write_output(result)
  end
end
