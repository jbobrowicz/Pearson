require_relative "input_reader"
require_relative "function_factory"
require_relative "output_writer_factory"
require_relative "cfg"

class Planner
  def initialize(cfg)
    @input = InputReader.new(cfg.input)
    @output = OutputWriterFactory.create_output_writer(cfg.output, cfg.output_format)
    @function = FunctionFactory.create_function(cfg.function)
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
