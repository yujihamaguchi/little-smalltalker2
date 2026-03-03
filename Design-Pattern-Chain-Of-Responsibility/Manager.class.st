Class {
	#name : #Manager,
	#superclass : #Responder,
	#category : #'Design-Pattern-Chain-Of-Responsibility'
}

{ #category : #processing }
Manager >> handle: aRequest [

	aRequest days <= 3
		ifTrue: [
			^ 'Manager approved {1}-days leave.' format:
				  { aRequest days asString } ]
		ifFalse: [ ^ nextResponder handle: aRequest ]
]
