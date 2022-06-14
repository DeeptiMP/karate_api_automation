Feature: validate put Endpoint

Background: Get the url
Given url _url

Scenario: validate put request based on job id
#Create the Job Entry in Portal
Given def randomNum = function() {return Math.floor((1000)*Math.random());}
And def id = randomNum()
And print "jobId is : ", id
* def postRequest = call read("../createJobEntry.feature") {jobDesc:"Automating Testcases", jId:'#(id)', jobTitle:"Senior Engineer"}
And match id == postRequest.jobId
And print "jobId from Response is : ", postRequest.jobId
#Update the job entry
And path 'normal/webapi/update'
And request {"experience":["CSS Corp"],"jobDescription":"BackEnd processing","jobId":'#(postRequest.jobId)',"jobTitle":"Data Analyst","project":[{"projectName":"Facebook_Advance Feature","technology":["SpringBoot"]}]}
And method put
Then status 200
And print response


