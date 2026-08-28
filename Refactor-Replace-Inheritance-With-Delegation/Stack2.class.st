Class {
	#name : 'Stack2',
	#superclass : 'OrderedCollection',
	#category : 'Refactor-Replace-Inheritance-With-Delegation',
	#package : 'Refactor-Replace-Inheritance-With-Delegation'
}

{ #category : 'operating' }
Stack2 >> push: anObject [

	self addLast: anObject
]

{ #category : 'operating' }
Stack2 >> top [

	^ self last
]
