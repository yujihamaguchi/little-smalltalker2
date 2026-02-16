Class {
	#name : #TriLevelSwitch,
	#superclass : #Switch,
	#instVars : [
		'level'
	],
	#category : #'Design-Pattern-Bridge'
}

{ #category : #processing }
TriLevelSwitch >> high [
	
	level := #high.
	device high
]

{ #category : #initialization }
TriLevelSwitch >> initialize [ 

	super initialize.
	level := #medium.
	^ self
]

{ #category : #accessing }
TriLevelSwitch >> level [ 

	^ level
]

{ #category : #processing }
TriLevelSwitch >> low [

	level := #low.
	device low
]

{ #category : #processing }
TriLevelSwitch >> medium [

	level := #medium.
	device medium
]

{ #category : #switching }
TriLevelSwitch >> turnOn [

	super turnOn.
	device perform: level
]
