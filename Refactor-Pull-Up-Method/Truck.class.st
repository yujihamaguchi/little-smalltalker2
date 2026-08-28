Class {
	#name : 'Truck',
	#superclass : 'Vehicle',
	#category : 'Refactor-Pull-Up-Method',
	#package : 'Refactor-Pull-Up-Method'
}

{ #category : 'operating' }
Truck >> wheelInfo [

	^ 'wheels: ', numberOfWheels printString
]
