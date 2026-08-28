Class {
	#name : 'Payroll',
	#superclass : 'Object',
	#category : 'Refactor-Replace-Magic-Number-With-Symbolic-Constant',
	#package : 'Refactor-Replace-Magic-Number-With-Symbolic-Constant'
}

{ #category : 'operating' }
Payroll >> taxFor: gross [

	^ gross * 20 / 100
]
