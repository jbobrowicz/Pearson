class InputReader
  def initialize(input)
    @input_stream = input
  end
  def read_numbers
    @input_stream.read.split(/,| /).map { |s| s.to_f }
  end
end
