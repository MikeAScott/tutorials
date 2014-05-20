Feature: Consumer login
In order to secure my data
As a Consumer
I want a facility to securely log in to the consumer portal

Scenario: Clicking Sign In presents the User Login form 
Given I am on the Consumer Portal Home Page
When I click "Sign In"
Then I expect to see the "User Login" form 

