Feature: Company Sign Up
    As a company, when I sign up, it should take me to add position

Scenario: A user signs up as a company
  Given I am on the sign up page
  Then I should see "Sign up"
  And I fill in "Email" with "test@gmail.com"
  And I fill in "Password" with "password"
  And I fill in "Confirm Password" with "password"
  And I select "Company" from "user[orgtype]"
  When I press "Sign up"
  Then I should be on the new positions page