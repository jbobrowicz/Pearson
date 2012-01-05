class MeanFunction
  def apply(numbers)
    [numbers.inject(0) {|acc, n| acc + n} / numbers.size]
  end
end