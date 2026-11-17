Class {
	#name : 'OrdinaryAccount',
	#superclass : 'BankAccount2',
	#category : 'Refactor-Push-Down-Field',
	#package : 'Refactor-Push-Down-Field'
}

{ #category : 'operating' }
OrdinaryAccount >> annualInterestOn: principal [

	^ principal * interestRate / 100
]
