Dir["*_function.rb"].each {|f| require_relative f.gsub('.rb','')} # it doesnt work, but why ?

class FunctionFactory
  def self.create_function(fn_name) # cfg.function -> fn_name
    begin
      (eval fn_name.capitalize + "Function").new
    rescue 
      raise "Error: Unsupported function #{fn_name}"
    end
  end
end



