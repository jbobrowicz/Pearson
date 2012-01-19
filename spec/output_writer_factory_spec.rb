require_relative "../lib/output_writer_factory"
require_relative "../lib/cfg"

describe OutputWriterFactory do
  it "should create HtmlOutputWriter function" do
    cfg = Cfg.new(nil, nil, nil, "html")
    html_writer = OutputWriterFactory.create_output_writer(cfg)
    html_writer.should be_an HtmlOutputWriter
  end
  it "should create CSVOutputWriter function" do
    cfg = Cfg.new(nil, nil, nil, "csv")
    csv_writer = OutputWriterFactory.create_output_writer(cfg)
    csv_writer.should be_an CSVOutputWriter
  end
end
