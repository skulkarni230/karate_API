Feature: JSON input operations
	
	Scenario: print sample JSON with object
	
 * def jsonObject = 
	"""
	[{
	"name" : "Raghav",
	"city" : "Pune"	
	},
{
	"name" : "Tom",
	"city" : "Mumbai"	
	}	
	]	
	"""
	
	#print entire json
	* print jsonObject
	* print jsonObject[0].name + jsonObject[0].city 
	
	Scenario: working with complex JSON
	
	* def jsonObject = 
	"""
	{
	"menu": {
  "id": "file",
  "value": "File",
  "popup": {
    "menuitem": [
      {"value": "New", "onclick": "CreateNewDoc()"},
      {"value": "Open", "onclick": "OpenDoc()"},
      {"value": "Close", "onclick": "CloseDoc()"}
    ]
  }
}
}
	"""
	
* print jsonObject	
* print jsonObject.menu.id
* print jsonObject.menu.popup
* print jsonObject.menu.popup.menuitem
* print jsonObject.menu.popup.menuitem[0].value
* print jsonObject.menu.popup.menuitem[0].onclick