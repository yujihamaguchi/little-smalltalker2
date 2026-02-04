Class {
	#name : #DPStrategyTest,
	#superclass : #TestCase,
	#category : #'DesignPatterns-Tests'
}

{ #category : #tests }
DPStrategyTest >> testSubclassResponsibility [
  self should: [ DPStrategy new execute ] raise: Error
]
