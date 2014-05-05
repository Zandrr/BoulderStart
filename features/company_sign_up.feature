Feature: Company Sign Up
    As a company, when I sign up, I should see a list of candidates

Scenario: A user signs up as a company
  Given I am on the start page
  When I follow "For Startups"
  Then I should be on the sign up page
  Then I should see "Create a startup account"
  And I fill in "Email" with "test@gmail.com"
  And I fill in "Password" with "password"
  And I fill in "Confirm Password" with "password"
  When I press "Sign up"
  Then I should be on the users page