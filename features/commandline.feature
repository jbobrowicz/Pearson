Feature: commandline support
  
  @identity
  Scenario: Story #1 - Identity function
    Given input "1,2,3" 
    And function "identity"
    When the program is run
    Then the result should be "1.0,2.0,3.0"
   
  @unsupported
  Scenario: Story #2 - Error for unsupported function
    Given function "blabla" 
    When the program is run
    Then the result should indicate an error
    
  @mean
  Scenario: Story #3 - Mean function
    Given input "1,2,3"
    And function "mean"
    When the program is run
    Then the result should be "2.0"

  @median
  Scenario: Story #4 - Median function
    Given input "1,2,3"
    And function "median"
    When the program is run
    Then the result should be "2.0"