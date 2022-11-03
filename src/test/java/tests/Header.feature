Feature: Passing request headers in different ways

Background:
 * url 'https://reqres.in/api/users'


Scenario: Passing header individuallly
Given header Host = 'reqres.in'
And header Connection = 'Keep-Alive'
And header User-Agent = 'Apache-HttpClient/4.5.13'
When method GET
Then status 200
* print response

Scenario: Passing header with configure keyword
* configure headers =  {header Host:'reqres.in',header Connection:'Keep-Alive',User-Agent:'Apache-HttpClient/4.5.13'}
When method GET
Then status 200
* print response

