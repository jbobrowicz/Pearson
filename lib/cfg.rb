class Cfg
  def initialize
    @input = $stdin
    @output = $stdout
    # @function = ARGV.first
    @function = "identity"
    # @output_format = ARGV.last
    @output_format = "csv"
  end
  def self.output_format
    @output_format
  end
  def self.output
    @output
  end
  def self.input
    @input
  end
  def self.function
    @function
  end
end
