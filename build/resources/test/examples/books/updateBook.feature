Feature: Update a Booking

  Background:
    * url 'https://restful-booker.herokuapp.com'
    * def bookingId = 560

@updateBook
  Scenario: Update an existing booking
    Given path 'booking', bookingId
    And request
    """
    { 
      "firstname" : "Juan",
      "lastname" : "Osorio",
      "totalprice" : 111,
      "depositpaid" : true,
      "bookingdates" : {
        "checkin" : "2018-01-01",
        "checkout" : "2019-01-01"
      },
      "additionalneeds" : "Breakfast"
    }
    """

    When method put
    Then status 200
    And match response == 
    """
    { 
      "firstname" : "James",
      "lastname" : "Brown",
      "totalprice" : 111,
      "depositpaid" : true,
      "bookingdates" : {
        "checkin" : "2018-01-01",
        "checkout" : "2019-01-01"
      },
      "additionalneeds" : "Breakfast"
    }
    """
