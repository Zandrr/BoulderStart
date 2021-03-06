Feature: Student Sign Up
		As a student, when I sign up, it should take me to add skills

Scenario: A user signs up as a student
  Given I am on the start page
  When I follow "For Candidates"
  Then I should be on the sign up page
  Then I should see "Create a Candidate Account"
	And I fill in "Email" with "test@gmail.com"
	When I press "Send to Companies"
	Then I should be on the home page
