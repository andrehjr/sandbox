Feature: Manage Articles 
  In order to make a blog
  As an author
  I want to create and manage things
  
  Scenario: Articles List
    Given I have a list of articles
    When I go to the article page named sei la
    Then I should see "sei la"