Feature: Validate get endpoint with query parameter
Background: Get url
Given url _url

Scenario: Validate response of get endpoint by passing query parameter
Given def randomNum = function() {return Math.floor((1000)*Math.random());}
And def id = randomNum()
And def postRequest = call read("../createJobEntry.feature") {"jobDesc":"FrondEnd Development","jobId":'#(id)',"jobTitle":"Software Engineer - II"}
#Send the get request with Query Parameter
And path 'normal/webapi/find'
And param id = postRequest.jId
And param jobTitle = postRequest.jTitle
When method get
Then status 200

Scenario: validate get request with job id not present in application
Given path 'normal/webapi/find'
* def randomNum = function() {return Math.floor((1000)*Math.random());}
And param id = randomNum()
And param jobTitle = 'Software Engineer - II'
When method get
Then status 404