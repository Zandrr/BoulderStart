Feature: Company Positions Page
	As a company, when I visit the positions page, then I should see a list of available students

Scenario: A company visits the positions page
	Given I am a new, authenticated Company
		And I am on the positions page
	Then I should see "Students"
