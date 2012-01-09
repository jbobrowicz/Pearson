class MedianFunction
  def apply(numbers)
    # sorted = numbers.sort
    # mid = numbers.size/2
    # [sorted[mid]]
    [(numbers.sort)[numbers.size/2]]
  end
end
