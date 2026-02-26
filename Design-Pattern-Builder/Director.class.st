Class {
	#name : #Director,
	#superclass : #Object,
	#category : #'Design-Pattern-Builder'
}

{ #category : #'as yet unclassified' }
Director >> constructSUVCar: aBuilder [

	^ aBuilder
		  withEngine: NormalEngine new;
		  withSeats: {
				  Seat new.
				  Seat new.
				  Seat new.
				  Seat new };
		  build
]

{ #category : #'as yet unclassified' }
Director >> constructSportsCar: aBuilder [

	^ aBuilder
		  withEngine: SportsEngine new;
		  withSeats: {
				  Seat new.
				  Seat new };
		  build
]
