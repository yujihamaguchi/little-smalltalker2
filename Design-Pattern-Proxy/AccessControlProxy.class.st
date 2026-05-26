Class {
	#name : #AccessControlProxy,
	#superclass : #Object,
	#traits : 'TSubject',
	#classTraits : 'TSubject classTrait',
	#instVars : [
		'subject'
	],
	#category : #'Design-Pattern-Proxy'
}

{ #category : #accessing }
AccessControlProxy class >> subject: aSubject [

	^ self new subject: aSubject
]

{ #category : #operations }
AccessControlProxy >> requestAs: aRoleSymbol [
	aRoleSymbol = #admin ifFalse: [ Error signal: 'Access denied for ', aRoleSymbol ].
	^ subject requestAs: aRoleSymbol
]

{ #category : #private }
AccessControlProxy >> subject: aSubject [

	subject := aSubject
]
