Feature: 
  In order to get an overview about a mobilization
  As an user
  I should be able to view a mobilization page

  Scenario: Viewing a mobilization page
    Given there are 1 mobilization
    When I go to "the mobilization's page"
    Then I should see the mobilization's title

  Scenario: the mobilization has a background image
    Given there are 1 mobilization
    And the mobilization has a background image
    When I go to "the mobilization's page"
    Then I should see the mobilization's background image
