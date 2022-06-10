Feature: Variable creation in Karate Framework

Background: declare variable in this section and print them in 2 scenario
Given def var3 = 100
And def var4 = "Automation"



# <Gherkin keyword> <def> <variable name> = <value>
# Use variable for repeating value
# Storig the data from a external file 
# In the matcher expression
# Passing the data from one feature file to another feature file

Scenario: Declare variable and print them
Given def var1 = 10
And print "Value of var1 is: ", var1
And def var2 = "Karate Automation"
And print "value of var2 is: ", var2

Scenario: Print background variables
Given print "Value of var3 is: ", var3
And print "Value of var4 is: ", var4

Scenario: Print background variables
Given print "Value of var3 is: ", var3
And print "Value of var4 is: ", var4

