Feature: Get API demo
Background:
Given def myName = "shamim"
And def myJson = read('file:src/test/resources/testData.json')

  Scenario: Get demo 1
    Given url "https://reqres.in/img/faces/8-image.jpg"
    When method GET
    Then status 200
    And print response
    And print responseLine
    And print responseStatus
    And print responseTime
    And print responseHeaders
    And print responseCookies

  @ShTest
  Scenario: Get demo
  
    Given url someUrlBase
    And print someUrlBase 
    And print myName
    
    And print myJson
    When method GET
    Then status 200
    And print response

  @ShTest1
  Scenario: testing the POST call for User Creation
    Given url 'https://reqres.in/api/users'
    And request '{"name": "Shamim","job": "Automation eng"}'
    When method POST
    Then status 201
    And print response

  @ShTest1
  Scenario: testing the GET call for User Creation
    Given url 'https://reqres.in/api/users'
    # And request '{"name": "Shamim","job": "Automation eng"}'
    When method GET
    Then status 200
    And print response
    And print responseHeaders

  @ShTest1
  Scenario: testing the GET call for User Creation
    Given url 'https://reqres.in/api/users'
    # And request '{"name": "Shamim","job": "Automation eng"}'
    When method DELETE
    Then status 204
    And print response
    And print responseHeaders

  @ShTest7
  Scenario: Get demo
    Given url 'https://reqres.in/api/users'
    And request '{"name": "Shamim","job": "Automation eng"}'
    When method POST
    Then status 201
    And print response
    Given url 'https://reqres.in/api/users'
    When method GET
    Then status 200
    Then match response.data[0].email contains "george"
    And print response
