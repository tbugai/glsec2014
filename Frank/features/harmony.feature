Feature: GLSEC Harmony App

  Scenario: Login
    Given I launch the app using iOS 7.1 and the ipad simulator
    And I am on the login page

    When I enter the username "ipad@example.com"
    And I enter the password "glsec2014"
    And I touch "Sign In"

    Then I should be on the sites page
