Class {
	#name : 'Employee13',
	#superclass : 'Object',
	#instVars : [
		'person'
	],
	#category : 'Refactor-Replace-Delegation-With-Inheritance',
	#package : 'Refactor-Replace-Delegation-With-Inheritance'
}

{ #category : 'instance creation' }
Employee13 class >> named: aName [

	^ self new setPerson: (Person11 name: aName)
]

{ #category : 'operating' }
Employee13 >> name [

	^ person name
]

{ #category : 'private' }
Employee13 >> setPerson: aPerson [

	person := aPerson
]
