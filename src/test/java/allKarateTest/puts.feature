
Feature: PUT Demo 3
Background:
Def url=call.read("C:\Users\13475\eclipse-workspace\karate\src\test\java\allKarateTest\base.config")


@rests
Scenario:PUT method execute
Given url url
And request {"name" : "asma","job" : "QA"}
When method PUT
Then status 200
Then print response
@rests
Scenario:PATCH method execute
Given url "https://reqres.in/api/users/2"
And request {"name" : "asma Talukder","job" : "QA Lead"}
When method PATCH
Then status 200
Then print response