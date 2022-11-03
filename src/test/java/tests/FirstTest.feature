Feature: Sample API test

  Scenario: Get API Test
    Given url 'https://reqres.in/api/users/2'
    When method GET
    Then status 200