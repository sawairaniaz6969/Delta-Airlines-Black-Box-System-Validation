# Test Case 1
Scenario: Update baggage status after departure
  Given the passenger has checked in a bag at the origin airport
  When the flight departs from the origin
  Then the baggage status should update from "Checked In" to "In Transit"

# Test Case 2
Scenario: Notify baggage arrival
  Given the flight has landed at the destination airport
  When the baggage is scanned at the baggage claim area
  Then the FlyDelta app should update the status to "Arrived"
  And the passenger should receive a push notification confirming baggage arrival

# Test Case 3
Scenario: Handle lost baggage
  Given no baggage scan is recorded within 30 minutes after arrival
  When the baggage tracking system checks for updates
  Then the bag should be flagged as "Missing"
  And an alert should be automatically sent to the baggage services department

# Test Case 4
Scenario: Update seat assignment after booking
  Given a passenger books a flight and selects a seat
  When the booking is confirmed
  Then the seat assignment should be saved in the Passenger Service System
  And the passenger should see the selected seat on their booking summary

# Test Case 5
Scenario: Issue mobile boarding pass
  Given a passenger checks in online
  When the check-in is completed
  Then the system should create a mobile boarding pass
  And the boarding pass should be available in the FlyDelta app

# Test Case 6
Scenario: Handle passenger flight cancellation
  Given a passenger cancels their flight
  When the cancellation is confirmed
  Then the Passenger Service System should release the seat
  And the system should update the passengers booking status to "Cancelled"

# Test Case 7
Scenario: Push notification for gate change
  Given a gate change is registered in the backend system
  When the passengers flight gate is updated
  Then the FlyDelta app should send a push notification with the new gate information

# Test Case 8
Scenario: Add boarding pass to Apple Wallet
  Given a user completes online check-in using an iPhone
  When they view the boarding pass
  Then the option to "Add to Wallet" should be available and functional

# Test Case 9
Scenario: Reschedule flight due to weather
  Given severe weather is forecasted at the destination
  When the Operations Control System identifies affected flights
  Then it should automatically reschedule the flights
  And send updated flight information to all impacted passengers

# Test Case 10
Scenario: Validate crew assignment
  Given a flight is scheduled for departure
  When the Operations Control System assigns the crew
  Then it should check that all crew members meet FAA rest rules
  And ensure all crew certifications are valid before departure


