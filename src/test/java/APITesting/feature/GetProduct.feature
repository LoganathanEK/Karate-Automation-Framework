Feature: API Testing with Karate

  Scenario: Get all products
    Given url APIUrl
    When method GET
    Then status 200

  @GetAPI
  Scenario: Get specific product with query parameter
    Given url APIUrl
    And path '1'
    When method GET
    Then status 200
    * print response
    And match response.name == 'cerulean'
    And match response.year == 2000
    And print response
