Feature: Manage Articles 
  In order to make a blog
  As an author
  I want to create and manage things
  
  Scenario: Articles List
    Given I hate articles titled sei la
    When I go to the list of arts
    Then I should see "pizza"
    And I should see "Breadzpfdf"