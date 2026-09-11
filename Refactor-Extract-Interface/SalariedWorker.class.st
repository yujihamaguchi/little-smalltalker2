Class {
	#name : 'SalariedWorker',
	#superclass : 'Object',
	#instVars : [
		'monthlySalary',
		'skilled'
	],
	#category : 'Refactor-Extract-Interface',
	#package : 'Refactor-Extract-Interface'
}

{ #category : 'instance creation' }
SalariedWorker class >> monthlySalary: anAmount skilled: aBoolean [

	^ self new setMonthlySalary: anAmount skilled: aBoolean
]

{ #category : 'accessing' }
SalariedWorker >> hasSpecialSkill [

	^ skilled
]

{ #category : 'accessing' }
SalariedWorker >> rate [

	^ monthlySalary / 20
]

{ #category : 'private' }
SalariedWorker >> setMonthlySalary: anAmount skilled: aBoolean [

	monthlySalary := anAmount.
	skilled := aBoolean
]
