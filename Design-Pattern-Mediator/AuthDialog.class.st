Class {
	#name : #AuthDialog,
	#superclass : #Object,
	#instVars : [
		'loginCheckbox',
		'loginForm',
		'registerForm'
	],
	#category : #'Design-Pattern-Mediator'
}

{ #category : #operations }
AuthDialog >> eventFrom: anObject type: aSymbol [

	(LoginCheckbox = anObject class and: [ #check = aSymbol ]) ifTrue: [
		loginForm enable.
		registerForm disable ].
	(LoginCheckbox = anObject class and: [ #uncheck = aSymbol ]) ifTrue: [
		loginForm disable.
		registerForm enable ].
	(RegisterForm = anObject class and: [ #submit = aSymbol ]) ifTrue: [
		loginCheckbox check.
		loginForm enable ]
]

{ #category : #initialization }
AuthDialog >> initialize [

	loginCheckbox := NullComponent new.
	loginForm := NullComponent new.
	registerForm := NullComponent new.
	
	loginCheckbox := (LoginCheckbox mediator: self) uncheck.
	loginForm := (LoginForm mediator: self) disable.
	registerForm := (RegisterForm mediator: self) enable
]

{ #category : #accessing }
AuthDialog >> loginCheckbox [

	^ loginCheckbox 
]

{ #category : #accessing }
AuthDialog >> loginForm [

	^ loginForm 
]

{ #category : #accessing }
AuthDialog >> registerForm [

	^ registerForm 
]
