Class {
	#name : #CEO,
	#superclass : #Responder,
	#category : #'Design-Pattern-Chain-Of-Responsibility'
}

{ #category : #processing }
CEO >> handle: aRequest [

	^ 'CEO approved {1}-days leave.' format: {aRequest days asString}
]
