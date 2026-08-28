Class {
	#name : 'TemperaturePanelTest',
	#superclass : 'TestCase',
	#category : 'Refactor-Duplicate-Observed-Data-Tests',
	#package : 'Refactor-Duplicate-Observed-Data-Tests'
}

{ #category : 'tests' }
TemperaturePanelTest >> testFahrenheit [

	| panel result |
	"Arrange"
	panel := TemperaturePanel celsius: 100.

	"Act"
	result := panel fahrenheit.

	"Assert"
	self assert: result equals: 212
]
