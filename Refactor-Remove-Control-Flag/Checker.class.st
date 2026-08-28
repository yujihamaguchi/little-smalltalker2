Class {
	#name : 'Checker',
	#superclass : 'Object',
	#category : 'Refactor-Remove-Control-Flag',
	#package : 'Refactor-Remove-Control-Flag'
}

{ #category : 'operating' }
Checker >> containsMiscreant: aCollection [

	| found |
	found := false.
	aCollection do: [ :each | found ifFalse: [ each = 'Don' ifTrue: [ found := true ] ] ].
	^ found
]
