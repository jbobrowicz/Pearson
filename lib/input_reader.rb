class InputReader
  def initialize(cfg)
    @input_stream = cfg.input
  end
  def read_numbers
    @input_stream.read.split(/,| /).map { |s| s.to_f }
  end
end
