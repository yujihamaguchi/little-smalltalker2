Class {
	#name : 'CSVReport',
	#superclass : 'Report',
	#category : 'Design-Pattern-Template-Method',
	#package : 'Design-Pattern-Template-Method'
}

{ #category : 'formatting' }
CSVReport >> render: aData [

	^ aData fold: [ :acc :each | acc, ',', each ]

	
]
