Feature: Test API Login and POST Data with Token
  Background:
    Given url APIUrl

  @PostAPI
  Scenario: User Logs In and Creates a New Product
    And request
      """
      {
        "name": "Bagpack",
        "price": 19.99,
        "description": "Nike bagpack",
        "category": "Books"
      }
      """
    When method POST
    Then status 201
    And match response.name == 'Bagpack'
    And match response.price == 19.99