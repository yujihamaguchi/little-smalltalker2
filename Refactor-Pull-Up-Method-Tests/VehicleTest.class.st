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
	self assert: result equals: 'wheels: 4'
]

{ #category : 'tests' }
VehicleTest >> testTruckWheelInfo [

	| truck result |
	"Arrange"
	truck := Truck wheels: 6.

	"Act"
	result := truck wheelInfo.

	"Assert"
	self assert: result equals: 'wheels: 6'
]
