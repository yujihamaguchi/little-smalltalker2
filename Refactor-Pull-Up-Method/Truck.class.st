Class {
	#name : 'Truck',
	#superclass : 'Vehicle',
	#category : 'Refactor-Pull-Up-Method',
	#package : 'Refactor-Pull-Up-Method'
}

{ #category : 'accessing' }
Truck >> kind [

	^ 'truck'
]

{ #category : 'operating' }
Truck >> wheelInfo [

	^ self kind, ': ', numberOfWheels printString, ' wheels'
]
