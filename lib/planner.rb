require_relative "input_reader"
require_relative "output_writer"
require_relative "function_factory"

class Planner
  def initialize(argv, input, output)
    @ff = FunctionFactory.new(argv, input, output)
  end

  def run
    numbers = @ff.read_numbers
    result = @ff.transform(numbers)
    @ff.write_output(result)
  end
end
