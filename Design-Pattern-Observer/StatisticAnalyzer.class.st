Class {
	#name : #StatisticAnalyzer,
	#superclass : #Observer,
	#instVars : [
		'temperatures',
		'humidities'
	],
	#category : #'Design-Pattern-Observer'
}

{ #category : #processing }
StatisticAnalyzer >> analyze [

	^ 'Average / temperature: ', (temperatures averageIfEmpty: 'N/A') asString, ', humidity: ', (humidities averageIfEmpty: 'N/A') asString
]

{ #category : #updating }
StatisticAnalyzer >> humidity: aNumber [

	humidities add: aNumber
]

{ #category : #initialization }
StatisticAnalyzer >> initialize [

	temperatures := OrderedCollection new.
	humidities := OrderedCollection new
]

{ #category : #updating }
StatisticAnalyzer >> temperature: aNumber [

	temperatures add: aNumber
]
