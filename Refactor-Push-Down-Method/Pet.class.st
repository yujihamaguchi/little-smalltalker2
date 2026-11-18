Class {
	#name : 'Pet',
	#superclass : 'Object',
	#instVars : [
		'name'
	],
	#category : 'Refactor-Push-Down-Method',
	#package : 'Refactor-Push-Down-Method'
}

{ #category : 'instance creation' }
Pet class >> named: aName [

	^ self new setName: aName
]

{ #category : 'accessing' }
Pet >> name [

	^ name
]

{ #category : 'private' }
Pet >> setName: aName [

	name := aName
]

{ #category : 'operating' }
Pet >> sing [

	^ 'tweet'
]
