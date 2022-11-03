Feature: User authentication

Background:
	* url 'http://10.151.32.200:30386/upc/rest'
	* def params =
	"""
	{
  "ipAddress": "127.0.0.1",
  "password": "sysadmin",
  "userIdentifier": "admin"
}
	"""
	
	* header Content-Type = 'application/json'
	* header User-Agent = 'PostmanRuntime/7.29.2'
	* header Accept = '*/*'
	* header Accept-Encoding = 'gzip, deflate, br'
	* header Connection = 'keep-alive'
	

	Scenario: Generate Token
	Given path '/productmanager/system/generateAuthTokenForStaff' 
	And request params
	When method POST
	* print response
	Then status 200
	
	