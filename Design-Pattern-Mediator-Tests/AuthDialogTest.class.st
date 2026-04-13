Class {
	#name : #AuthDialogTest,
	#superclass : #TestCase,
	#category : #'Design-Pattern-Mediator-Tests'
}

{ #category : #tests }
AuthDialogTest >> testCheckCheckbox [

	| authDialog |
	"Arrange"
	authDialog := AuthDialog new.
	self deny: authDialog loginCheckbox isChecked.
	self deny: authDialog loginForm isEnabled.
	self assert: authDialog registerForm isEnabled.

	"Act"
	authDialog loginCheckbox check.

	"Assert"
	self assert: authDialog loginCheckbox isChecked.
	self assert: authDialog loginForm isEnabled.
	self deny: authDialog registerForm isEnabled
]

{ #category : #tests }
AuthDialogTest >> testSubmitRegisterForm [

	| authDialog |
	"Arrange"
	authDialog := AuthDialog new.
	self deny: authDialog loginCheckbox isChecked.
	self deny: authDialog loginForm isEnabled.
	self assert: authDialog registerForm isEnabled.
		
	"Act"
	authDialog registerForm submit.

	"Assert"
	self assert: authDialog loginCheckbox isChecked.
	self assert: authDialog loginForm isEnabled.
	self deny: authDialog registerForm isEnabled
]

{ #category : #tests }
AuthDialogTest >> testUncheckCheckbox [

	| authDialog |
	"Arrange"
	authDialog := AuthDialog new.
	authDialog loginCheckbox check.
	self assert: authDialog loginCheckbox isChecked.
	self assert: authDialog loginForm isEnabled.
	self deny: authDialog registerForm isEnabled.
		
	"Act"
	authDialog loginCheckbox uncheck.

	"Assert"
	self deny: authDialog loginCheckbox isChecked.
	self deny: authDialog loginForm isEnabled.
	self assert: authDialog registerForm isEnabled
]
