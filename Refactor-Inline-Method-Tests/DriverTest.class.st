Class {
	#name : 'DriverTest',
	#superclass : 'TestCase',
	#category : 'Refactor-Inline-Method-Tests',
	#package : 'Refactor-Inline-Method-Tests'
}

{ #category : 'tests' }
DriverTest >> testRatingWhenFewLate [

	| driver result |
	"Arrange"
	driver := Driver lateDeliveries: 3.
	"Act"
	result := driver rating.
	"Assert"
	self assert: result equals: 1
]

{ #category : 'tests' }
DriverTest >> testRatingWhenManyLate [

	| driver result |
	"Arrange"
	driver := Driver lateDeliveries: 6.
	"Act"
	result := driver rating.
	"Assert"
	self assert: result equals: 2
]
