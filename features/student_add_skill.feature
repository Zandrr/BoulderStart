Feature: Student add skill
    As a student, when I add a skill, it should create the skill and redirect to my profile page

Scenario: A user adds a position
  Given I am a new, authenticated Student
  Then I should see "Signed in successfully."
  Given I am on the new positions page
  Then I should see "Create your profile"
  And I fill in "position[description]" with "Incredibly talented"
  And I fill in "position[skills]" with "ruby"
  And I fill in "position[interests]" with "internship"
  And I fill in "position[categories]" with "cs"
  And I select "Yes" from "position[looking]"
  When I press "Add"
  Then I should be on testing@man.net's profile page