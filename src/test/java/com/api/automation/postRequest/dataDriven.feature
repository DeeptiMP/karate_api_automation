Feature: Create multiple job entry with Scenario Outline

  Background: Get url
    Given url _url
    And def dataFromCsv = read("data/testData.csv")

  Scenario Outline: Create multiple job entry -- <jobTitle>
    Given path 'normal/webapi/add'
    And header Accept = 'application/json'
    And request {"jobId":'#(jobId)',"jobTitle":'#(jobTitle)',"jobDescription":'#(jobDescription)',"experience":["Google","Apple","Mobile Iron"],"project":[{"projectName":"Movie App","technology":["Kotlin","SQL Lite","Gradle"]}]}
    When method post
    Then status <statusCode>

    Examples: 
      | jobId | jobTitle               | jobDescription | statusCode |
      |  9876 | Senior Engineer        | SDET           |        201 |
      | id    | Technical staff member | SDET           |        400 |
      | true  | Associate Consultant   | SDET           |        400 |
      | &%$%  | Specialist             | SDET           |        400 |

  Scenario Outline: Create multiple job entry -- <jobTitle>
    Given path 'normal/webapi/add'
    And header Accept = 'application/json'
    And request {"jobId":'#(jobId)',"jobTitle":'#(jobTitle)',"jobDescription":'#(jobDescription)',"experience":["Google","Apple","Mobile Iron"],"project":[{"projectName":"Movie App","technology":["Kotlin","SQL Lite","Gradle"]}]}
    When method post
    Then status <statusCode>

    Examples: 
      | dataFromCsv |
