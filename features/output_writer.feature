Feature: Output writer

  @csv
  Scenario: Story #1 - CSV Output
  	Given input "1,2,3" 
  	And output type is default
  	When the program is run
  	Then the result should be "1.0,2.0,3.0"

  @html
  Scenario: Story #2 - HTML Output
    Given input "1,2,3" 
    And output type is "html"
    When the program is run
    Then the result should be "1.0,2.0,3.0"
	And the result should contain an html tags