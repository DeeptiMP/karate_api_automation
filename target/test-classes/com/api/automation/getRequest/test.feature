Feature: Global Configuration Value Check

Background: Set Url
Given url _url
And headers {Accept:application/json}
Scenario: Print global variable values
Given path 'normal/webapi/all'
When method get
Then status 200
And print response

