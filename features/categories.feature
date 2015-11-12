Feature: Categories
  As an admin
  In order to create categories to the articles in the blog
  I want to control the categories

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    When I follow "Categories"

  Scenario: It should be possible to create new categories
    When I fill in "Name" with "NewCategory"
    And I press "Save"
    Then I should see "NewCategory"
    And I should see "no articles"

  Scenario: It should be possible to edit existing categories
    When I follow "General"
    Then I fill in "Description" with "Descrevendo"
    And I press "Save"
    Then I should see "Descrevendo"
