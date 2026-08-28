Class {
	#name : 'BookingTest',
	#superclass : 'TestCase',
	#category : 'Refactor-Replace-Data-Value-With-Object-Tests',
	#package : 'Refactor-Replace-Data-Value-With-Object-Tests'
}

{ #category : 'tests' }
BookingTest >> testCustomerName [

	| booking result |
	"Arrange"
	booking := Booking customer: 'Alice'.

	"Act"
	result := booking customerName.

	"Assert"
	self assert: result equals: 'Alice'
]
