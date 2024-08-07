Feature: Create a book

  Background:
    * url 'https://restful-booker.herokuapp.com/'

  @createBook
  Scenario: create book Happy path
    * def book =
    """
    {
    "firstname" : "Juan",
    "lastname" : "Tester",
    "totalprice" : 6000000,
    "depositpaid" : true,
    "bookingdates" : {
        "checkin" : "2024-08-20",
        "checkout" : "2024-08-20"
    },
    "additionalneeds" : "newJob"
    }
    """

    Given path 'booking'
    And request book
    When method post
    Then status 201
    * def id = response.id
    * print 'created id is: ', id
