require_relative "identity_function"
require_relative "mean_function"

class FunctionFactory
  def self.create_function(argv)
    case argv.first
    when "identity"
      IdentityFunction.new
    when "mean"
      MeanFunction.new
    else
      raise "Error: Unsupported function #{@function}"
    end
  end
end
