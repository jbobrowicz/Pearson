require_relative "function_factory"

class VarianceFunction
  def apply(numbers) 
    avg = FunctionFactory.create_function(["mean"]).apply(numbers).first # it's kinda too long to make it inline :P
    [1 / numbers.length.to_f * (numbers.inject(0){|acc, i| acc + (i - avg) ** 2})] 
  end
end