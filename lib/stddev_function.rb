require_relative "function_factory"

class StddevFunction
  def apply(numbers) 
    [Math.sqrt(FunctionFactory.create_function("variance").apply(numbers).first)]
  end
end
