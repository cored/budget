Feature: View expenses by categories
  As a User
  In order to control how much I spent in each category
  I want to be able to see a report showing how much I spent in each category

  Scenario: 2 Categories, 2 Expenses
    Given I created the category Food
    And I created the category 'Health'
    And I spent 100 in 'Food'
    And I spent 200 in 'Food'
    And I spent 400 in 'Health'
    And I spent 200 in 'Health'
    When I view the spent by category report
    Then the spent by category report should match:
        | CategoryName | SubTotal |
        | Food         | 300      |
        | Health       | 600      |
    And the total should be 900
