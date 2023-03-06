Feature:  Nopcommerce Registration
  As a User I want to check Register functionality of Nopcommerce
  Background:I am on Nopcommerce Registration page
  Given: I open the Google Chrome Browser
    When : I open the Url http://demo.nopcommerce.com/register
    Then : I am on Nopcommerce Registration page

  Scenario Outline: I should not be able to register with invalid data on mandatory field(*) of registration page
    When : I enter first name "<First Name>"
    And  : I enter last name "<Last Name>"
    And  : I enter Email address "<Email>"
    And  : I enter Password"<Password>"
    And  : I enter Confirm Password "<Confirm Password>"
    And  : I click on register button
    Then : I can see an error message"<error message>"
    And  : I am not able to register
    Examples:
      |   First Name   | Last Name  |   Email Address   |  Password  |  Confirm Password  |  Error message           |
      |       "        | Joshi      | Joshi@gmail.com   |  123456    |   123456           |please enter first name   |
      |   Kishan       |   "        | joshi@gmail.com   |  123456    |   123456           |please enter last name    |
      |   kishan       | Joshi      |      "            |  123456    |   123456           |please enter valid email  |
      |   kishan       | joshi      | joshi@gmail.com   |    "       |   123456           |password is required      |
      |   kishan       | joshi      | joshi@gmail.com   |  123456    |   987654           |password and confirm password do not match|
      |      "         |     "      |        "          |     "      |        "           |mandatory field is required               |
  Scenario:  I should be able to select any one radio button from Gender lable of your personal details section
    Given : I am on personal detail section
    When  : i select "male" radio button
    And   : I select "female" radio button
    Then  : I am able to see any one of the radio button

  Scenario Outline: I should be able to select Day,Month and Year from drop down list of Date of Birth field
    Given : I am on Date of Birth field of personal detail section
    When  : I select the day "<Day>"
    And   : I select "<Month>"
    And   : I select "<Year>"
    Then  : I am to select Day,Month and Year from drop down list
    Examples:
      |  Day    |   Month    |   Year    |
      | Monday  | August     |  2000     |
  Scenario: I should be able to check and uncheck the Newsletter box on option section
    Given : I am on newsletter lable on option section
    When  : I click on Newsletter checkbox
    And   : I was able to check and uncheck the box next to Newsletter lable
  Scenario: I should be able to register with valid mandatory (*) field data on registration page
    When  : I enter First Name "Kishan"
    And   : I enter Last Name "Joshi"
    And   : I enter Email address " joshi@gmail.com"
    And   : I enter Password "123456"
    And   : I enter confirm password "123456"
    And   : I click on register button
    Then  : I able to register successfully


