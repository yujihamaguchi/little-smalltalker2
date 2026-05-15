Class {
	#name : #MockTranscript,
	#superclass : #Object,
	#instVars : [
		'message'
	],
	#category : #'Design-Pattern-Observer-Tests'
}

{ #category : #accessing }
MockTranscript >> message [

	^ message
]

{ #category : #showing }
MockTranscript >> show: aString [

	message := aString
]
