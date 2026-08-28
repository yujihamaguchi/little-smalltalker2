Class {
	#name : 'SubscriptionTest',
	#superclass : 'TestCase',
	#category : 'Refactor-Replace-Type-Code-With-State-Strategy-Tests',
	#package : 'Refactor-Replace-Type-Code-With-State-Strategy-Tests'
}

{ #category : 'tests' }
SubscriptionTest >> testFreeFee [

	| sub result |
	"Arrange"
	sub := Subscription level: #free.

	"Act"
	result := sub monthlyFee.

	"Assert"
	self assert: result equals: 0
]

{ #category : 'tests' }
SubscriptionTest >> testUpgradeChangesFee [

	| sub result |
	"Arrange"
	sub := Subscription level: #free.

	"Act"
	sub changeLevel: #pro.
	result := sub monthlyFee.

	"Assert"
	self assert: result equals: 10
]
