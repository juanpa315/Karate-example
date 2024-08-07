Feature: As an automator I want to create the automation test of the service to consult book guarantee the quality

Background:
* url 'https://restful-booker.herokuapp.com/booking/'

@getBook
Scenario: Consult book Happy path
    Given path '1'
    When method get
    Then status 200
