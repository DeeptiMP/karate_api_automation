Feature: Read data from external file

Background: Get url
Given url _url

Scenario: Validate get end point
Given path 'normal/webapi/all'
And header Accept = 'application/json'
And def jsonMatch = read("../jsonResponse.json")
When method get
Then status 200
And match response == jsonMatch