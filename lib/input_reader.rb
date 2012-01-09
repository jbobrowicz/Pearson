class InputReader
  def initialize(input_stream)
    @input_stream = input_stream
  end
  def read_numbers
    @input_stream.read.split(/,| /).map { |s| s.to_f }
  end
end
