Feature: Adding a message

	Scenario: Adding a message on the homepage
		Given I am on the homepage
		When I fill in the message form
		Then I should see my message displayed
