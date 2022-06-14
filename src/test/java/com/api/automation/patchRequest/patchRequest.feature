Feature: Validate patch end point

  Background: get url
    Given url _url

  Scenario: Validate patch end point with id, jobTitle and jobDescription
    Given def randomNum = function() {return Math.floor((1000)*Math.random());}
    And def id = randomNum()
    And def postRequest = call read("../createJobEntry.feature") {"jobDesc":"FrondEnd Development","jobId":'#(id)',"jobTitle":"Software Engineer - II"}
    #Send the patch request
    Given path 'normal/webapi/update/details'
    And header Accept = 'application/json'
    And params {id:'#(id)',jobTitle:"Software Engineer",jobDescription:'Development Engineer'}
    When method patch
    Then status 200
    
     Scenario: Validate patch end point with id not present in application, jobTitle and jobDescription
    #Send the patch request
    * def randomNum = function() {return Math.floor((1000)*Math.random());}
    Given path 'normal/webapi/update/details'
    And header Accept = 'application/json'
    And params {id:'#(randomNum())',jobTitle:"Software Engineer",jobDescription:'Development Engineer'}
    When method patch
    Then status 404