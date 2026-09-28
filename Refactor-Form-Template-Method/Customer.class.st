Class {
	#name : 'Customer',
	#superclass : 'Object',
	#instVars : [
		'name',
		'rentals'
	],
	#category : 'Refactor-Form-Template-Method',
	#package : 'Refactor-Form-Template-Method'
}

{ #category : 'instance creation' }
Customer class >> name: aName [

	^ self new setName: aName
]

{ #category : 'adding' }
Customer >> addRental: aRental [

	rentals add: aRental
]

{ #category : 'operating' }
Customer >> htmlStatement [

	^ HtmlStatement new value: self
]

{ #category : 'accessing' }
Customer >> name [

	^ name
]

{ #category : 'accessing' }
Customer >> rentals [

	^ rentals
]

{ #category : 'private' }
Customer >> setName: aName [

	name := aName.
	rentals := OrderedCollection new
]

{ #category : 'operating' }
Customer >> statement [

	^ TextStatement new value: self
]

{ #category : 'operating' }
Customer >> totalCharge [

	^ rentals inject: 0 into: [ :sum :each | sum + each charge ]
]
