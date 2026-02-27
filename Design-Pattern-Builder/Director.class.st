Class {
	#name : #Director,
	#superclass : #Object,
	#category : #'Design-Pattern-Builder'
}

{ #category : #processing }
Director >> constructSUVCar: aBuilder [

	^ aBuilder
		  engine: NormalEngine new;
		  seats: {
				  Seat new.
				  Seat new.
				  Seat new.
				  Seat new };
		  build
]

{ #category : #processing }
Director >> constructSportsCar: aBuilder [

	^ aBuilder
		  engine: SportsEngine new;
		  seats: {
				  Seat new.
				  Seat new };
		  build
]
