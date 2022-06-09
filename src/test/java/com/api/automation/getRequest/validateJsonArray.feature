Feature: Validate get end point of the application

Background: Get the url
Given url _url
And print _url

Scenario: Validate json Array values
Given path 'normal/webapi/all'
And header Accept = 'application/json'
When method get
Then status 200
And print response
And match response.[0].jobId == 1
And match response.[0].experience[1] == "Apple"
And match response.[0].project[0].technology[2] == "Gradle"

Scenario: Validate json Array size
Given path 'normal/webapi/all'
And header Accept = 'application/json'
When method get
Then status 200
And print response
And match response.[0].project[0].technology == '#[3]'
And match response.[0].experience == '#[3]'
And match response.[0].project == '#[1]'
