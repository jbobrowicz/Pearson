require_relative "cfg"
require_relative "input_reader"
require_relative "csv_output_writer"
require_relative "html_output_writer"
require_relative "function_factory"

class OutputWriterFactory
  def self.create_output_writer(cfg)
    if cfg.output_format == "html"
      HtmlOutputWriter.new(cfg.output)
    else
      CSVOutputWriter.new(cfg.output)
    end
  end
end
