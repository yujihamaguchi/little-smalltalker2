Class {
	#name : #WeatherTest,
	#superclass : #TestCase,
	#instVars : [
		'weather',
		'forecastDisplay',
		'statisticAnalyzer',
		'transcript'
	],
	#category : #'Design-Pattern-Observer-Tests'
}

{ #category : #running }
WeatherTest >> setUp [

	weather := Weather new.
	transcript := MockTranscript new.
	forecastDisplay := ForecastDisplay subject: weather output: transcript.
	statisticAnalyzer := StatisticAnalyzer subject: weather.
]

{ #category : #tests }
WeatherTest >> testUpdate [

	"Act & Assert"
	weather temperature: 10.
	self assert: transcript message equals: 'Forecast / temperature: 10'.
	self assert: statisticAnalyzer analyze equals: 'Average / temperature: 10, humidity: N/A'.

	weather humidity: 40.
	self assert: transcript message equals: 'Forecast / humidity: 40'.
	self assert: statisticAnalyzer analyze equals: 'Average / temperature: 10, humidity: 40'.

	weather temperature: 0; humidity: 80.
	self assert: statisticAnalyzer analyze equals: 'Average / temperature: 5, humidity: 60'.
	

]
