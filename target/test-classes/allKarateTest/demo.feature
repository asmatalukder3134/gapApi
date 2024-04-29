Scenario: Demo 1

Background:
#Given url '
When def jsonFile = read('/karate/src/test/java/allKarateTest/testData.json')
#And def jData = jsonFile.datas[0].sku
#And print jData
@nTest
Scenario:
And def jData = jsonFile.datas[0].sku
And print jData