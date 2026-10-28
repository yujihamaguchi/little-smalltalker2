Class {
	#name : 'Customer2',
	#superclass : 'Object',
	#instVars : [
		'name',
		'plan',
		'weeksDelinquent'
	],
	#category : 'Refactor-Introduce-Null-Object',
	#package : 'Refactor-Introduce-Null-Object'
}

{ #category : 'instance creation' }
Customer2 class >> name: aName plan: aPlan weeksDelinquent: aNumber [

	^ self new setName: aName plan: aPlan weeksDelinquent: aNumber
]

{ #category : 'accessing' }
Customer2 >> name [

	^ name
]

{ #category : 'accessing' }
Customer2 >> plan [

	^ plan
]

{ #category : 'private' }
Customer2 >> setName: aName plan: aPlan weeksDelinquent: aNumber [

	name := aName.
	plan := aPlan.
	weeksDelinquent := aNumber
]

{ #category : 'accessing' }
Customer2 >> weeksDelinquent [

	^ weeksDelinquent
]
