Class {
	#name : 'Invoice2',
	#superclass : 'Object',
	#category : 'Refactor-Introduce-Foreign-Method',
	#package : 'Refactor-Introduce-Foreign-Method'
}

{ #category : 'operating' }
Invoice2 >> isOverdueOn: today due: dueDay [

	^ today > (dueDay + 30)
]
