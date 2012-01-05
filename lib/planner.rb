require_relative "input_reader"
require_relative "output_writer"
require_relative "function_factory"

class Planner
  def initialize(argv, input, output)
    @input = InputReader.new(input)
    @output = OutputWriter.new(output)
    
    # ...zgapiejka output_writer_factory:
    # if argv.last == "html"
    #   @output = HtmlOutputWriter.new(output)
    # else
    #   @output = CsvOutputWriter.new(output)
    # end
    
    # @output = OutputWriterFactory.create_output_writer(argv, output)
    @function = FunctionFactory.create_function(argv)
  end

  def run
    numbers = read_numbers
    result = transform(numbers)
    write_output(result) 
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
