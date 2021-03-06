Feature: Manage a wiki page
  As a user
  I should be able to make a new page
  And modify existing ones

  Scenario: Write a new page
    Given I search the page foo search
     When I follow "Foo search"
      And I should see "Creation of the page \"Foo search\""
     Then I fill in "Content (en)" with:
      """
        Hello, I'm foo bar !
        **Are you ready to see what happen ?**
      """
      And I press "Save"
      And I should see "Hello, i'm foo bar !"

  Scenario: Update a page
    Given I am on "/en/article/home.html"
     When I follow "Page"
      And I follow "Modify"
     Then I should see "Modification of the page \"Home\""
    Then I fill in "Content (en)" with:
      """
        I'm the new homepage :) .
      """
    And I press "Save"
    And I should see "I'm the new homepage :) ."
