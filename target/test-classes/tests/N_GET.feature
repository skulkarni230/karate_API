Feature: GET API TEST NAVEEN (Simple and with Query Param

# to user query parameter use keyword params
# to use path parameter use keyword path

	Scenario: GET user details with API
	Given url 'https://reqres.in/api/users'
	And path '2'
	When method GET
	Then status 200
	* print response
	* def jsonResponse = response
	* def actualName = jsonResponse.data.first_name
	* print actualName
	* match actualName == jsonResponse.data.first_name
	* print "Actual Name "+actualName+"Matched with Response Name "+jsonResponse.data.first_name
	
	Scenario: Get users with specific first name
	* def query = {id:'7'}
	Given url 'https://reqres.in/api/users'
	And params query
	When method GET
	Then status 200
	* print response
	
	Scenario: Get users with specific multiple query parameter
	* def query = {id:'1' , avatar:'https://reqres.in/img/faces/1-image.jpg'}
	Given url 'https://reqres.in/api/users'
	And params query
	When method GET
	Then status 200
	* print response
	
	Scenario: Get users count with avatar as query
	* def query = {avatar:'https://reqres.in/img/faces/1-image.jpg'}
	Given url 'https://reqres.in/api/users'
	And params query
	When method GET
	Then status 200
	* def jsonResponse = response
	* def totalCount = jsonResponse.data.length
	* print response
	* print totalCount
	* match totalCount == jsonResponse.data.length
	
	
	