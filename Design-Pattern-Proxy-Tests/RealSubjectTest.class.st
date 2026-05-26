Class {
	#name : #RealSubjectTest,
	#superclass : #TestCase,
	#category : #'Design-Pattern-Proxy-Tests'
}

{ #category : #tests }
RealSubjectTest >> testRequest [

	| realSubject cases |
	"Arrange"
	cases := {
		{ #role -> #foo. #expected -> 'Request processed by foo' }.
		{ #role -> #bar. #expected -> 'Request processed by bar' }.
		{ #role -> #baz. #expected -> 'Request processed by baz' }
	} collect: [ :each | each asDictionary ].
	realSubject := RealSubject new.

	"Act & Assert"
	cases do: [ :testCase |
		self
			assert: (realSubject requestAs: (testCase at: #role))
			equals: (testCase at: #expected) ]
]
