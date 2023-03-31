Feature: Ordering
Background:
  * url 'https://petstore.swagger.io/v2'

  Scenario: Order deleting
    Given path 'store/order'
    And header Content-type = "application/json"
    And request {"id": 0, "petId": 0, "quantity": 0, "shipDate": "2023-03-30T15:51:43.741Z","status": "placed", "complete": true}
    When method post
    Then match responseStatus == 200

    * def id = response.id

    Given path 'store/order/' + id
    When method delete
    Then match response == { "code": 200, "type": "unknown", "message": "246497834698"}

    Given path 'store/order/' + id
    When method get
    Then match response == {"code":1,"type":"error","message":"Order not found"}