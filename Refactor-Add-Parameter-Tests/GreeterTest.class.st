Class {
	#name : 'GreeterTest',
	#superclass : 'TestCase',
	#category : 'Refactor-Add-Parameter-Tests',
	#package : 'Refactor-Add-Parameter-Tests'
}

{ #category : 'tests' }
GreeterTest >> testGreeting [

	| greeter result |
	"Arrange"
	greeter := Greeter new.

	"Act"
	result := greeter greeting.

	"Assert"
	self assert: result equals: 'Hello'
]
