Feature: Consumer login
  In order to secure my data
  As a Consumer
  I want a facility to securely log in to the consumer portal

  Scenario: Clicking Sign In presents the User Login form
    Given I am on the Consumer Portal Home Page
    When I click "Sign In"
    Then I expect to see the "User Login" form

  Scenario: Registered user can sign in
    Given I am on the user login page
    When I enter email "muffly@gmail.com" with password "testing123"
    And I click the sign in button
    Then I expect to be signed in

  Scenario: User can't login with invalid password


  Scenario: Unregistered user can't login


  Scenario Outline: Username must be a valid email format
    Given I am on the user login page
    When I attempt to sign in with email: "<email>" and password: "testing123"
    Then I expect to see error message: <error message>

    Examples: 
      | email    | error message                                                              |
      | test     | This email address is invalid. Please enter at least 6 characters          |
      | testing  | This email address is invalid. An email must contain an @ and a full stop. |
      | 1@2.33   | Your login details can not be found.                                       |
      | @@@@@... | Your login details can not be found.                                       |
      

  @wip
  Scenario: User can begin forgotten password reset
    Given I am on the user log in page
    When I click forgotten password?
    Then I expect to see the reset your password page

  Scenario: User account is locked after 5 unsuccessful logins
  
  Scenario: Signed in user can sign out
  

