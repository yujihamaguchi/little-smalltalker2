Class {
	#name : 'MealTest',
	#superclass : 'TestCase',
	#category : 'Refactor-Form-Template-Method-Tests',
	#package : 'Refactor-Form-Template-Method-Tests'
}

{ #category : 'tests' }
MealTest >> testBreakfastDescribe [

	| meal result |
	"Arrange"
	meal := Breakfast name: 'Alice'.

	"Act"
	result := meal describe.

	"Assert"
	self assert: result equals: 'Good morning, Alice'
]

{ #category : 'tests' }
MealTest >> testDinnerDescribe [

	| meal result |
	"Arrange"
	meal := Dinner name: 'Bob'.

	"Act"
	result := meal describe.

	"Assert"
	self assert: result equals: 'Good evening, Bob'
]
