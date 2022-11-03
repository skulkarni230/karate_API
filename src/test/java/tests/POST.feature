Feature: Sample POST api test

  Background: 
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'
  	* def expectedOutput = read('output.json')  

  #sample POST api test
  Scenario: POST api demo
    Given url 'https://reqres.in/api/users'
    And request {"Name":"Te_1209","Job":"Test Analyst"}
    When method post
    Then status 201
    And print response

  #POST api with background
  Scenario: POST api demo with background
    Given path '/users'
    And request {"Name":"Te_1209","Job":"Test Analyst"}
    When method post
    Then status 201
    And print response

  #POST api with asserrtion
  Scenario: POST api demo with assertion
    Given path '/users'
    And request {"Name":"Te_1209","Job":"Test Analyst"}
    When method post
    Then status 201
    And print response
    #you don't know what the response content will be then you can just give the type of 
    #particular field or you can simple ignore it by ignore keyword as below.
    And match response == {"Name": "Te_1209","Job": "Test Analyst","id": "#string","createdAt": "#ignore"}
    
   #POST api with JSON file
  Scenario: Reading JSON response from file
    Given path '/users'
    And request {"Name":"Te_1209","Job":"Test Analyst"}
    When method post
    Then status 201
    And print response
    And match response == expectedOutput
    
    #POST api with JSON file
  Scenario: Reading JSON request from file
    Given path '/users'
    And def requestBody = read('input.json')
    And request requestBody 
    When method post
    Then status 201
    And print response
    
    #POST api with JSON file
  Scenario: Providing attribute value from feature file
    Given path '/users'
    And def requestBody = read('input.json') 
    And set requestBody.Job = 'QA Engineer'
    And request requestBody 
    When method post
    Then status 201
    And print response
    
    
    
    
    
