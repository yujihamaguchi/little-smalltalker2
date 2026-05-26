Class {
	#name : #AccessControlProxyTest,
	#superclass : #TestCase,
	#category : #'Design-Pattern-Proxy-Tests'
}

{ #category : #tests }
AccessControlProxyTest >> testRequestAsAdmin [

	| realSubject accessControlProxy |
	"Arrange"
	realSubject := RealSubject new.
	accessControlProxy := AccessControlProxy subject: realSubject.

	"Act & Assert"
	self
		assert: (accessControlProxy requestAs: #admin)
		equals: 'Request processed by admin'
]

{ #category : #tests }
AccessControlProxyTest >> testRequestAsGuest [

	| realSubject accessControlProxy cases |
	"Arrange"
	cases := {
		{ #role -> #guest . #errorMessageText -> 'Access denied for guest' }. 
		{ #role -> #user . #errorMessageText -> 'Access denied for user' } 
	} collect: [ :each | each asDictionary  ].
	realSubject := RealSubject new.
	accessControlProxy := AccessControlProxy subject: realSubject.

	"Act & Assert"
	cases do: [ :case |
		self
			should: [ accessControlProxy requestAs: (case at: #role) ]
			raise: Error
			withExceptionDo: [ :error |
				self assert: error messageText equals: (case at: #errorMessageText )]]
]
