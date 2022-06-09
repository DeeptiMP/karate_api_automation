Feature: To validate the get end point

Background: Set the url value
Given url _url

Scenario: Test the get end point with json data
Given path 'normal/webapi/all'
And header Accept = 'application/json'
When method get
Then status 200
And print response
And match response contains deep {"jobTitle": "Software Engg"}
And match response contains deep {"experience":["Google"]}
And match response contains deep {"project":[{"technology":["Kotlin"]}]}

Scenario: Validate get end point response
Given path 'normal/webapi/all'
And header Accept = 'application/json'
When method get
Then status 200
And print response
And match response contains deep {"jobTitle": "Software Engg"}
And match header Accept = 'application/json'