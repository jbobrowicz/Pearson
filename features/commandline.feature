Feature: commandline support
  
  Scenario: Story #1 - Identity function
    Given input "1,2,3" 
    And function "identity"
    When the program is run
    Then the result should be "1,2,3"
   
  Scenario: Story #2 - Error for unsupported function
    Given function "blabla" 
    When the program is run
    Then the result should indicate an error
    
