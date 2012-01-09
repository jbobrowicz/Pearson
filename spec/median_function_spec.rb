require_relative "../lib/median_function"

describe MedianFunction do
  it "should return median" do
    m = MedianFunction.new
    m.apply([1, 2, 3]).should == [2]
  end
end