require_relative "identity_function"
require_relative "mean_function"
require_relative "median_function"

class FunctionFactory
  def self.create_function(argv)
    case argv.first
    when "identity"
      IdentityFunction.new
    when "mean"
      MeanFunction.new
    when "median"
      MedianFunction.new
    else
      raise "Error: Unsupported function #{@function}"
    end
  end
end
