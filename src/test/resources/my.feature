Feature: My feature

  Scenario: First scenario
    * print 'step 1'
    * print 'step 2'
    * print 'step 3'

  Scenario: Second scenario
    Given def color = 'red '
    And def num = 5
    Then assert color + num == 'red 5'

  Scenario: Third scenario
    Given path 'https://mysite.example.api.com/users/login'
    When method post
    Then status 200
    And match response == { message: 'User logged in', error: null }
