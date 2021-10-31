@registration
Feature: As a customer I want to be able to register account using the registration form
  Background:
    Given I am on the registration page


  @wip
  Scenario: Registration form positive test case
    When I fill the first name input field with "Olegs"
    And I fill the last name input field with "Kirilovs"
    And I add an email in the email input field
    And I fill the address_1 input field with "Random Street"
    And I fill the city input field with "Rezekne"
    And I select "latvia" in the country dropdown
    And I select "rezeknes rajons" in the region dropdown
    And I fill the post code input field with "LV-11111"
    And I fill the login input field with "Login"
    And I fill the password input field with "P@ssw0rd"
    And I fill the password confirm input field with "P@ssw0rd"
    And I select "subscribe yes" radiobutton
    And I select "privacy policy" checkbox
    And I click "continue" button
    And I check confirmation text