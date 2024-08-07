Feature: Delete a Booking

  Background:
    * url 'https://restful-booker.herokuapp.com'

@deleteBook
  Scenario: Delete an existing booking
    Given path 'booking', 1
    When method delete
    Then status 201
