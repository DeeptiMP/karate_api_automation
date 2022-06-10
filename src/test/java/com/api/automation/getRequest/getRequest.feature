Feature: To test the get end point of the application

Background: Set the url value
Given url _url

Scenario: Test the get end point with json data
Given path 'normal/webapi/all'
And header Accept = 'application/json'
When method get
Then status 200
And print response