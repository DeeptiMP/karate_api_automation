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

Scenario: Validate json Array size and validate response with wild card character
Given path 'normal/webapi/all'
And header Accept = 'application/json'
When method get
Then status 200
And print response
And match response.[0].project[0].technology == '#[3]'
And match response.[0].experience == '#[3]'
And match response.[0].project == '#[1]'
#Using wild card character
And match response.[0].experience[*] == ["Google","Apple","Mobile Iron"]
#Use of contains with wild card character
And match response.[0].project[0].technology[*] contains ["Kotlin"]
And match response.[0].project[0].projectName == "Movie App"

Scenario: Validate json response with fuzzy matcher
Given path 'normal/webapi/all'
And header Accept = 'application/json'
When method get
Then status 200
And print response
And match response.[0].jobId == '#present'
And match response.[0].jobId == '#number'
And match response.[0].jobTitle == '#string'
And match response.[0].project == '#array'
#And match response.[0].project == '#object'
And match response.[0].project[0].technology == '#array'
And match response.[0].project[0].technology == '#[3] #string'
