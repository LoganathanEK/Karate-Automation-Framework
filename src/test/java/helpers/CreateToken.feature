Feature: Create Token

Scenario: Create Token
  Given url 'https://reqres.in/api/login'
  And header Content-Type = 'application/json'
  And request {"email": "#(userEmail)","password": "#(userPassword)"}
  When method POST
  Then status 200
  And match response.token == '#notnull'
  * def authToken = response.token