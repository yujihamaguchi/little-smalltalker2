Class {
	#name : 'Car',
	#superclass : 'Vehicle',
	#category : 'Refactor-Pull-Up-Method',
	#package : 'Refactor-Pull-Up-Method'
}

{ #category : 'accessing' }
Car >> kind [

	^ 'car'
]

{ #category : 'operating' }
Car >> wheelInfo [

	^ self kind, ': ', numberOfWheels printString, ' wheels'
]
