require_relative "../lib/identity_function"

describe IdentityFunction do
  it "should return its arguments" do
    i = IdentityFunction.new
    i.apply([1, 2, 3]) == [1, 2, 3]
  end
end