require_relative "input_reader"
require_relative "function_factory"
require_relative "output_writer_factory"
require_relative "cfg"

class Planner
  def initialize(function, input, output, output_format)
    @input = InputReader.new(input)
    @output = OutputWriterFactory.create_output_writer(output_format, output)
    @function = FunctionFactory.create_function(function)
  end

  def run
    # numbers = read_numbers
    # result = transform(numbers)
    # write_output(result)
    write_output transform read_numbers
  end

  private

  def read_numbers
    @input.read_numbers
  end

  def transform(numbers)
    @function.apply(numbers)
  end

  def write_output(result)
    @output.write_output(result)
  end
end
