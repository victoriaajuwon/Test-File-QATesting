@qtUserLogin
Feature: Make Reservation
Create a reservation booking

		
		
	Scenario: Create Booking	
		Given an endpoint "/booking" and expected response "200" and POST with:

		"""
		{
			"firstname" : "Sally",
			  "lastname" : "Brown",
			  "totalprice" : 125,
			  "depositpaid" : true,
			  "additionalneeds" : "Breakfast",
			  "bookingdates" : {
				"checkin" : "2013-02-23",
				"checkout" : "2014-10-23"
			}
		}

		"""
		Then the HTTP status should be "200"
		And the field "additionalneeds" should be "Breakfast"		
		