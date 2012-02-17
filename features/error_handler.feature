Feature: Error handler
  
  @empty_input
  Scenario: Story #1 - An empty input table
  	Given input "" 
  	When the program is run
  	Then the result should indicate an error

