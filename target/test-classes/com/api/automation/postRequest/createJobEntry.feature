Feature: Create a Job Entry with post request

  Background: create Job Entry
    Given url _url
    And headers {Content-Type:application/json, Accept:application/json}

  #Scenario: Create job Entry with post call
  #Given def postRequest = call read("../createJobEntry.feature") {jobDesc:API Automation,jId:213,jobTitle:"Senior Automation Engineer"}
  #And print "Status Code is : ", postRequest.statusCode
  Scenario: Validate post call by Creating Job Entry
    Given path 'normal/webapi/add'
    And request {"experience":["Wallmart"],"jobDescription":"Associate Engineer","jobId":21,"jobTitle":"Senior Engineer","project":[{"projectName":"SiriusXM","technology":["Selenium WebDriver"]}]}
    When method post
    Then status 201

  Scenario Outline: Validate jobDescription field <ScenarioTitle>
    Given path 'normal/webapi/add'
    And request {"experience":["Wallmart"],"jobDescription":<jobDesc>,"jobId":432,"jobTitle":"Senior Engineer","project":[{"projectName":"SiriusXM","technology":["Selenium WebDriver"]}]}
    When method post
    Then status <statusCode>

    Examples: 
      | jobDesc     | statusCode | ScenarioTitle |
      | !#$^@$#@^@& |        201 | Invalid Check |
      |             |        201 | Empty check   |
      | null        |        201 | Null Check    |

  Scenario Outline: Validate jobDescription field by Creating Job Entry <jobId>
    Given path 'normal/webapi/add'
    And request {"experience":["Wallmart"],"jobDescription":"Team Lead","jobId":<jobId>,"jobTitle":"Senior Engineer","project":[{"projectName":"SiriusXM","technology":["Selenium WebDriver"]}]}
    When method post
    Then status <statusCode>

    Examples: 
      | jobId       | statusCode |
      | !#$^@$#@^@& |        400 |
      |             |        201 |
      | null        |        201 |
