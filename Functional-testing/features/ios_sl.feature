@iOS_Test
Feature: Test on sample calculator app

  Scenario: Check addition of two numbers
    Given I land on the Home screen
    When I enter two numbers
    And I click the sum up button
    Then I should see the result