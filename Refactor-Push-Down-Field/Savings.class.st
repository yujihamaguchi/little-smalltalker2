Class {
	#name : 'Savings',
	#superclass : 'BankAccount2',
	#category : 'Refactor-Push-Down-Field',
	#package : 'Refactor-Push-Down-Field'
}

{ #category : 'operating' }
Savings >> annualInterestOn: principal [

	^ principal * interestRate / 100
]
