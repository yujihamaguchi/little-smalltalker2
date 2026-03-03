Class {
	#name : #GeneralManager,
	#superclass : #Responder,
	#category : #'Design-Pattern-Chain-Of-Responsibility'
}

{ #category : #processing }
GeneralManager >> handle: aRequest [

	aRequest days <= 5
		ifTrue: [
			^ 'General Manager approved {1}-days leave.' format:
				  { aRequest days asString } ]
		ifFalse: [ ^ nextResponder handle: aRequest ]
]
