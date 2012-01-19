class Cfg
  def initialize(function = ARGV.first, input = $stdin, output = $stdout, output_format = ARGV.last)
    @input = input
    @output = output
    @function = function
    @output_format = output_format
  end
  def output_format
    @output_format
  end
  def output
    @output
  end
  def input
    @input
  end
  def function
    @function
  end
end
