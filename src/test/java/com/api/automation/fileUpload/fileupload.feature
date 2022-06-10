Feature: Upload a file

  Background: Initialize the base url

  Scenario: Upload a file
    Given path 'normal/webapi/upload'
    And header Content-type = 'multipart/form-data'
    And multipart file fileToSend = {read:file.txt, filename:file.txt}
    When method post
    Then status 201
