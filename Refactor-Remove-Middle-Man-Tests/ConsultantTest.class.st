Class {
	#name : 'ConsultantTest',
	#superclass : 'TestCase',
	#category : 'Refactor-Remove-Middle-Man-Tests',
	#package : 'Refactor-Remove-Middle-Man-Tests'
}

{ #category : 'tests' }
ConsultantTest >> testCeoViaMiddleMan [

	| consultant result |
	"Arrange"
	consultant := Consultant company: (Company name: 'Acme' ceo: 'Tim' phone: '555-0100').

	"Act"
	result := consultant ceo.

	"Assert"
	self assert: result equals: 'Tim'
]

{ #category : 'tests' }
ConsultantTest >> testCompanyNameViaMiddleMan [

	| consultant result |
	"Arrange"
	consultant := Consultant company: (Company name: 'Acme' ceo: 'Tim' phone: '555-0100').

	"Act"
	result := consultant companyName.

	"Assert"
	self assert: result equals: 'Acme'
]

{ #category : 'tests' }
ConsultantTest >> testCompanyPhoneViaMiddleMan [

	| consultant result |
	"Arrange"
	consultant := Consultant company: (Company name: 'Acme' ceo: 'Tim' phone: '555-0100').

	"Act"
	result := consultant companyPhone.

	"Assert"
	self assert: result equals: '555-0100'
]
