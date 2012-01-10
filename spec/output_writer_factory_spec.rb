require_relative "../lib/output_writer_factory"

describe OutputWriterFactory do
  it "should create HtmlOutputWriter function" do
     html_writer = OutputWriterFactory.create_output_writer(["html"], @output)
     html_writer.should be_an HtmlOutputWriter
  end
  it "should create CSVOutputWriter function" do
     csv_writer = OutputWriterFactory.create_output_writer(["csv"], @output)
     csv_writer.should be_an CSVOutputWriter
  end
end
