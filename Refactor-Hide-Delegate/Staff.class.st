Class {
	#name : 'Staff',
	#superclass : 'Object',
	#instVars : [
		'department'
	],
	#category : 'Refactor-Hide-Delegate',
	#package : 'Refactor-Hide-Delegate'
}

{ #category : 'instance creation' }
Staff class >> department: aDept [

	^ self new setDepartment: aDept
]

{ #category : 'accessing' }
Staff >> department [

	^ department
]

{ #category : 'private' }
Staff >> setDepartment: aDept [

	department := aDept
]
