Class {
	#name : 'CSVReport',
	#superclass : 'Report',
	#category : 'Design-Pattern-Template-Method',
	#package : 'Design-Pattern-Template-Method'
}

{ #category : 'formatting' }
CSVReport >> format: aData [

	^ aData fold: [ :acc :each | acc, ',', each ]

	
]
