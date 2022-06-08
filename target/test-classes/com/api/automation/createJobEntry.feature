Feature: Create a Job Entry with post Call

Background: Access url from config file and set headers
Given url _url
And headers {Accept:application/json, Content-Type:application/json}

Scenario: Validate post call by Creating Job Entry
Given path 'normal/webapi/add'
And request {"experience":["Wallmart"],"jobDescription":'#(jobDesc)',"jobId":'#(jId)',"jobTitle":'jobTitle',"project":[{"projectName":"SiriusXM","technology":["Selenium WebDriver"]}]}
When method post
Then status 201
And def statusCode = response.jobId
