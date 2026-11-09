Class {
	#name : 'AccountType',
	#superclass : 'Object',
	#instVars : [
		'freeDays',
		'flatFee',
		'dailyRate'
	],
	#category : 'Refactor-Move-Method',
	#package : 'Refactor-Move-Method'
}

{ #category : 'instance creation' }
AccountType class >> freeDays: aDays flatFee: aFee dailyRate: aRate [

	^ self new setFreeDays: aDays flatFee: aFee dailyRate: aRate
]

{ #category : 'accessing' }
AccountType >> dailyRate [

	^ dailyRate
]

{ #category : 'accessing' }
AccountType >> flatFee [

	^ flatFee
]

{ #category : 'accessing' }
AccountType >> freeDays [

	^ freeDays
]

{ #category : 'private' }
AccountType >> setFreeDays: aDays flatFee: aFee dailyRate: aRate [

	freeDays := aDays.
	flatFee := aFee.
	dailyRate := aRate
]
