Feature: Demo of API




@rest
Scenario: Post demo1
#Given url  "https://reqres.in/#support-heading"
#Given path someUrlBase
Given print myLastName



 @rest1
  Scenario: testing the POST call for User Creation
    Given url 'https://reqres.in/api/users'
    And request '{"name": "Shamim","job": "Automation eng"}'
    When method POST
    Then status 201
    And print response
    
    
     @rest1
  Scenario: shamim POST call for User Creation
    #Given url 'https://reqres.in/api/users'
    Given myUrl crateAirlineUrl
    And request '{"name": "Shamim","job": "Automation eng"}'
    When method POST
    Then status 201
    And print response
    And print status
       @rest1
  Scenario: shamim GET call for User Creation
    #Given url 'https://reqres.in/api/users'
    Given myUrl crateAirlineUrl
    And request '{"name": "Shamim","job": "Automation eng"}'
    When method POST
    Then status 201
    And print response
    And print status




