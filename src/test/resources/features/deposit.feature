Feature: deposit
  As a customer
  I want to deposit my money to my bank account

Background:
  Given a customer with id 1 and pin 111 with balance 500.00 exists
  And I login to ATM with id 1 and pin 111

Scenario: deposit money one time
  When I deposit 1000.00 to my bank account using ATM
  Then my account balance is 1500.00
  
Scenario: deposit money two times
  When I deposit 250.00 to my bank account using ATM
  And I deposit 250.00 to my bank account using ATM
  Then my account balance is 1000.00
