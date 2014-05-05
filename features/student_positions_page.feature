Feature: Student Positions Page
	As a student, when I visit the positions page, then I should see a list of available companies

Scenario: A student visits the positions page
	Given I am a new, authenticated Student
		And I am on the positions page
	Then I should see "Companies"
