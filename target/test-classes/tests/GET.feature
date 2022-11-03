Feature: GET api test

  ## Common values for all scenarios
  Background: 
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'

  #Simple GET request
  Scenario: GET Demo
    Given url 'https://reqres.in/api/users/2'
    When method GET
    Then status 200
    And print response
    And print responseStatus
    And print responseHeaders

  #GET with background
  Scenario: GET With Background Demo
    Given path '/users/2'
    When method GET
    Then status 200
    And print response
    And print responseStatus
    And print responseHeaders

  #GET with parameter
  Scenario: GET With Parameter Demo
    Given path '/users'
    And param page = 2
    When method GET
    Then status 200
    And print response
    And print responseStatus
    And print responseHeaders

  #GET with assertions
  Scenario: GET With Assertions Demo
    Given path '/users'
    And param page = 2
    When method GET
    Then status 200
    And print response
    And assert response.data[0].id == 7
    And assert response.data[0].first_name != null
