require_relative "../../lib/html_check"

Then /^the result should contain an html tags$/ do
  is_html(@actual_result).should be true
end