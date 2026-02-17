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
	
	level := High uniqueInstance.
	level apply: device
]

{ #category : #initialization }
TriLevelSwitch >> initialize [ 

	super initialize.
	level := Medium uniqueInstance.
	^ self
]

{ #category : #accessing }
TriLevelSwitch >> level [ 

	^ level
]

{ #category : #processing }
TriLevelSwitch >> low [

	level := Low uniqueInstance.
	level apply: device
]

{ #category : #processing }
TriLevelSwitch >> medium [

	level := Medium uniqueInstance.
	level apply: device
]

{ #category : #switching }
TriLevelSwitch >> turnOn [

	super turnOn.
	level apply: device
]
