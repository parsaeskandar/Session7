@tag
Feature: Calculator

  Scenario: add two numbers
    Given Two input values, 1 and 2
    When I add the two values
    Then I expect the result 3

  Scenario Outline: add two numbers
    Given Two input values, <first> and <second>
    When I add the two values
    Then I expect the result <result>
    Examples:
      | first | second | result |
      | 1     | 12     | 13     |
      | -1    | 6      | 5      |
      | 2     | 2      | 4      |

  Scenario: divide two numbers
    Given Two input values, 6 and 2
    And One operator /
    When I calc the two values
    Then I expect the result 3
    
  Scenario: calculate one number power to second one
    Given Two input values, 6 and 2
    And One operator ^
    When I calc the two values
    Then I expect the result 36

  Scenario Outline: check divide and power
    Given Two input values, <first> and <second>
    And One operator <operator>
    When I calc the two values
    Then I expect the result <result>
    Examples:
      | first | second | operator | result |
      | 36 | 12 | / | 3 |
      | 3 | 1 | / | 3 |
      | 2 | 2 |  ^ | 4 |
      | 1 | 8 |  ^ | 1 |
