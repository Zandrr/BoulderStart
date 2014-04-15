Feature: Company Add Position
    As a company, when I add a position, it should create the position and redirect to my profile page

Scenario: A user adds a position
  Given I am a new, authenticated Company
  Then I should see "Signed in successfully."
  Given I am on the new positions page
  Then I should see "Add a Position"
  And I fill in "position[title]" with "New position"
  And I fill in "position[description]" with "Best position of all time"
  And I fill in "position[skills]" with "ruby"
  And I fill in "position[categories]" with "cs"
  And I select "Yes" from "position[looking]"
  When I press "Add"
  Then I should be on testing@man.net's profile page