require_relative "function_factory"

class StddevFunction
  def apply(numbers) 
    [Math.sqrt(1/numbers.length.to_f * ((numbers.inject(0){|acc, i| (acc + (i - (numbers.inject(0) {|acc, n| acc + n} / numbers.size.to_f)))**2})-1))]
  end
end
