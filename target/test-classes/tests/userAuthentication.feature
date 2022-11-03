Feature: API Authentication

  Background: 
    * url 'https://reqres.in/api/register'


# This block generates token
  Scenario: Authentication Test
   
    And form field email = 'eve.holt@reqres.in'
    And form field password = 'pistol'
    When method POST
    * print response
    Then status 200
    
    
    
## Storing token in a variable to use it in request

    * def accessToken = response.token
		Given path 'user'
		And header Authorization = 'Bearer' + accessToken    
		Then print accessToken
		
		
Scenario: Service Specification
	
	Given url 'http://10.151.32.200:30386/upc/rest/productmanager/catalogManagement/serviceSpecification/'
	* def params =
	"""
	{
  "ipAddress": "102.1.1.1",
  "password": "sysadmin",
  "userIdentifier": "admin"
}
	"""
	And form fields params
	When method GET
	* print response
	Then status 200
	