Feature: Editing profile

#	Scenario: New user
#		Given a user has just created an account
#		When they visit the profile preferences page
#		Then they should see their first name, last name, and email filled in
#		And nothing else should be filled in
	
	Scenario: Editing preferences
		Given a user vists the profile preferences page
		When they change any field
		And hit submit
		Then they should be brougt to their profile page
		And their change should show up
