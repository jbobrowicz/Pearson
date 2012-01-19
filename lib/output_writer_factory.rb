require_relative "cfg"
require_relative "input_reader"
require_relative "csv_output_writer"
require_relative "html_output_writer"
require_relative "function_factory"

class OutputWriterFactory
  def self.create_output_writer(output_format, output)
    if output_format == "html"
      HtmlOutputWriter.new(output)
    else
      CSVOutputWriter.new(output)
    end
  end
end
