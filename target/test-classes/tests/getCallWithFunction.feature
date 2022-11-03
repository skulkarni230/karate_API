Feature: Calling function from script

Scenario: Get user details with function

Given url 'https://reqres.in/api/users'
When method GET
Then status 200
* def data = response.data
Then print '--------Data--------',data

#Defining function
* def myFun =
"""
function(arg){
return arg
}
"""

#Calling function with arg data
* def userDetails = call myFun data
Then print '-----------Users Details------------',userDetails