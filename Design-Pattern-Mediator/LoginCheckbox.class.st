Class {
	#name : #LoginCheckbox,
	#superclass : #Colleague,
	#instVars : [
		'isChecked'
	],
	#category : #'Design-Pattern-Mediator'
}

{ #category : #operations }
LoginCheckbox >> check [

	isChecked := true.
	mediator eventFrom: self type: #check
]

{ #category : #accessing }
LoginCheckbox >> isChecked [

	^ isChecked
]

{ #category : #operations }
LoginCheckbox >> uncheck [

	isChecked := false.
	mediator eventFrom: self type: #uncheck
]
