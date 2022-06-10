Feature: Validate post endpoint response schema

  Background: Access the url
    Given url _url

  #Scenario: Validate response with schema
    #Given path 'normal/webapi/add'
    #And header Accept = 'application/json'
    #And request requestBody = read("/data/jsonData.json")
    #When method post
    #Then status 201
    #And match response ==
      #"""
      #{
          #"jobId": '#number',
          #"jobTitle": '#string',
          #"jobDescription": '#string',
          #"experience":'#[] #string',
          #"project": '#[] #object'
        #}
      #"""

  Scenario: Validate get endpoint response schema
    Given path 'normal/webapi/all'
    And header Accept = 'application/json'
    And def projectSchema = {projectName:'#string',technology:'#[] #string'}
    And def responseSchema = {jobId:'#number', jobTitle:'#string',jobDescription:'#string',experience:'#[] #string',project:'#[] ##(projectSchema)'}
    And def mainSchema = '#[] ##(responseSchema )'
    When method get
    Then status 200
    And match response == '#(mainSchema)'
