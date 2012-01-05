class OutputWriter
  def initialize(output)
    @output = output
  end
  def write_output(items)
    @output << items.map {|n| n.to_s}.join(",")
  end
end
