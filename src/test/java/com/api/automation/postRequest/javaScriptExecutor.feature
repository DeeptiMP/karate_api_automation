Feature: To execute the Javascript function

  Scenario: Execute java script function with or without parameter
    * def getInValue = function() {return 10;}
    And print "Value of the function : ", getInValue()
    * def randomNumber = function() {return Math.floor((1000)*Math.random());}
    And print "Random number is : ", randomNumber()
    * def getStringValue = function(arg1) {return "Hello " + arg1;}
    And print "String value is : ",getStringValue("World")
