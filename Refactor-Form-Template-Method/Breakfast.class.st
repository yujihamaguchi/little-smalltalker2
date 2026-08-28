Class {
	#name : 'Breakfast',
	#superclass : 'Meal',
	#category : 'Refactor-Form-Template-Method',
	#package : 'Refactor-Form-Template-Method'
}

{ #category : 'operating' }
Breakfast >> describe [

	^ self greeting, ' ', name
]

{ #category : 'operating' }
Breakfast >> greeting [

	^ 'Good morning,'
]
