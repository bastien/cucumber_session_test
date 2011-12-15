Feature: Purchase
  Scenario: Keeping session data after leaving rails app
    When I go to the home page
    And I press "Log in"
    Then I should see "Status: true"
    When I press "Purchase"
    # Then show me the page
    Then I should see "Status: true"