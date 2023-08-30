#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template
@tag
Feature: Is the number even?
  I need to know if the number is even or not

  @tag1
  Scenario Outline: Title of your scenario outline
    Given An integer <number>
    When I check if it is even
    Then The result should be "<answer>"

    Examples: 
      | number  | answer |
      | 1 			| No     |
      | 2				| Yes	   |
      | 0 			| Yes    |
