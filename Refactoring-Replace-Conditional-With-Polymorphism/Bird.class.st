Class {
	#name : 'Bird',
	#superclass : 'Object',
	#instVars : [
		'type',
		'baseSpeed',
		'numberOfCoconuts',
		'voltage',
		'isNailed'
	],
	#category : 'Refactoring-Replace-Conditional-With-Polymorphism',
	#package : 'Refactoring-Replace-Conditional-With-Polymorphism'
}

{ #category : 'instance creation' }
Bird class >> african: aBaseSpeed coconuts: aCount [

	^ self new type: #african; baseSpeed: aBaseSpeed; numberOfCoconuts: aCount; yourself
]

{ #category : 'instance creation' }
Bird class >> european: aBaseSpeed [

	^ self new type: #european; baseSpeed: aBaseSpeed; yourself
]

{ #category : 'instance creation' }
Bird class >> norwegianBlue: aBaseSpeed voltage: aVoltage nailed: aBoolean [

	^ self new type: #norwegianBlue; baseSpeed: aBaseSpeed; voltage: aVoltage; isNailed: aBoolean; yourself
]

{ #category : 'accessing' }
Bird >> baseSpeed: aNumber [

	baseSpeed := aNumber
]

{ #category : 'accessing' }
Bird >> isNailed: aBoolean [

	isNailed := aBoolean
]

{ #category : 'accessing' }
Bird >> numberOfCoconuts: aNumber [

	numberOfCoconuts := aNumber
]

{ #category : 'operating' }
Bird >> speed [

	type = #european ifTrue: [ ^ baseSpeed ].
	type = #african ifTrue: [ ^ baseSpeed - (2 * numberOfCoconuts) ].
	type = #norwegianBlue ifTrue: [ ^ isNailed ifTrue: [ 0 ] ifFalse: [ baseSpeed + voltage ] ].
	^ self error: 'unknown bird type'
]

{ #category : 'accessing' }
Bird >> type: aSymbol [

	type := aSymbol
]

{ #category : 'accessing' }
Bird >> voltage: aNumber [

	voltage := aNumber
]
