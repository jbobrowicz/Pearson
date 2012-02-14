require_relative "cfg"
require_relative "identity_function"
require_relative "mean_function"
require_relative "median_function"
require_relative "variance_function"
require_relative "stddev_function"

# Dir['*_function.rb'].each {|f| require_relative f.gsub('.rb','')} # it doesnt work, but why ?

class FunctionFactory
  def self.create_function(cfg)
    begin
      (eval cfg.function.capitalize + "Function").new
    rescue 
      raise "Error: Unsupported function #{cfg.function}"
    end
  end
end



