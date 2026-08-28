Class {
	#name : 'Dinner',
	#superclass : 'Meal',
	#category : 'Refactor-Form-Template-Method',
	#package : 'Refactor-Form-Template-Method'
}

{ #category : 'operating' }
Dinner >> describe [

	^ self greeting, ' ', name
]

{ #category : 'operating' }
Dinner >> greeting [

	^ 'Good evening,'
]
