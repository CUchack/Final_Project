#encoding: utf-8
Feature: Implementing the create a new account sequence.

	Scenario: Creating a new account
		Given I am on the Login page
		When I follow "Sign up now!"
		Then I should be on the Signup page
		When I fill in "Email Address" with "yourmom@this.com"
		And I fill in "Password" with "123456"
		And I fill in "Confirm Password" with "123456"
		And I fill in "First Name" with "Your"
		And I fill in "Last Name" with "Mom"
		And I press "Sign Up"
		Then I should be on the Profile Preferences page
		And I should see "Your Mom"
		
	Scenario: Setting up Profile
		Given I am on the Profile Preferences page
		When I fill in "First Name" with "Your"
		And I fill in "Last Name" with "Mom"
		And I fill in "Email" with "yourmom@this.com"
		And I fill in "Interests" with "Didn't you hear me? They're Your Mom?"
		And I fill in "About Yourself" with "Dating your mom"
		And I fill in "Quotes" with "Your mom likes it rough"
		And I press "Save Changes"
		Then I should be on the Profile page
		And I should see "Your Mom"
		And I should see "Didn't you hear me? They're Your Mom?"
		And I should see "Dating your mom"
		And I should see "Your mom likes it rough"