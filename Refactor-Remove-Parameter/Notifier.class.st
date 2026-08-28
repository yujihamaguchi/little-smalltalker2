Class {
	#name : 'Notifier',
	#superclass : 'Object',
	#category : 'Refactor-Remove-Parameter',
	#package : 'Refactor-Remove-Parameter'
}

{ #category : 'operating' }
Notifier >> notify: aMessage priority: aPriority [

	^ 'MSG: ', aMessage
]
