Given /^input "([^"]*)"$/ do |input|
  @input = input
end

Given /^function "([^"]*)"$/ do |function|
  @function = function
end

When /^the program is run$/ do
  Tempfile.open("output") do |output|
    process = IO.popen("ruby main.rb #{@function} > #{output.path}", "w")
    process.write(@input)
    process.close
    @actual_result = output.read
  end
end

Then /^the result should be "([^"]*)"$/ do |expected_results|
  @actual_result.should == expected_results
end

Then /^the result should indicate an error$/ do
  @actual_result.should include("Error")
end

Given /^output type is not "([^"]*)"$/ do |expected_results|
  @actual_result.should_not == expected_results
end

Then /^the result should not be "([^"]*)"$/ do |expected_results|
  @actual_result.should_not == expected_results
end