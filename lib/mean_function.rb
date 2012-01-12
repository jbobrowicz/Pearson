class MeanFunction
  def apply(numbers)
    [numbers.inject(0) {|acc, n| acc + n} / numbers.size.to_f]
  end
end