require_relative "function_factory"
require_relative "cfg"

class VarianceFunction
  def apply(numbers) 
    [1/numbers.length.to_f * ((numbers.inject(0){|acc, i| (acc + (i - (numbers.inject(0) {|acc, n| acc + n} / numbers.size.to_f)))**2})-1)]
  end
end