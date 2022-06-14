Feature: Upload a file

  Background: Initialize the base url
    Given url _url

  Scenario: Upload a file
    Given path 'normal/webapi/upload'
    And header Content-type = 'multipart/form-data'
    And multipart file file = {read:filee.txt, filename:filee.txt}
    When method post
    Then status 200
