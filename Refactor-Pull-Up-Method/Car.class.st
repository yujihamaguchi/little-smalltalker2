Class {
	#name : 'Car',
	#superclass : 'Vehicle',
	#category : 'Refactor-Pull-Up-Method',
	#package : 'Refactor-Pull-Up-Method'
}

{ #category : 'operating' }
Car >> wheelInfo [

	^ 'wheels: ', numberOfWheels printString
]
