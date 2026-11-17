Class {
	#name : 'VehicleTest',
	#superclass : 'TestCase',
	#category : 'Refactor-Pull-Up-Method-Tests',
	#package : 'Refactor-Pull-Up-Method-Tests'
}

{ #category : 'tests' }
VehicleTest >> testCarWheelInfo [

	| car result |
	"Arrange"
	car := Car wheels: 4.

	"Act"
	result := car wheelInfo.

	"Assert"
	self assert: result equals: 'car: 4 wheels'
]

{ #category : 'tests' }
VehicleTest >> testTruckWheelInfo [

	| truck result |
	"Arrange"
	truck := Truck wheels: 6.

	"Act"
	result := truck wheelInfo.

	"Assert"
	self assert: result equals: 'truck: 6 wheels'
]
