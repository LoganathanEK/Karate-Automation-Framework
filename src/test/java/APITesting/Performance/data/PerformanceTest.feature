Feature: Create, Delete, and Verify Product
  

@PostAndDelete
Scenario: Create, Delete, and Verify Product

  # Create Product
  Given url APIUrl
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
  * def productId = response.id

  # Delete Product
  Given url postAPIUrl+'/'+productId
  When method DELETE
  Then status 204

  # Verify Product is Deleted
  Given url postAPIUrl+'/'+productId
  When method GET
  Then status 404
