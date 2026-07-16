"
Please describe the package using the class comment of the included manifest class. The manifest class also includes other additional metadata for the package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : 'ManifestDesignPatternStateTests',
	#superclass : 'PackageManifest',
	#category : 'Design-Pattern-State-Tests-Manifest',
	#package : 'Design-Pattern-State-Tests',
	#tag : 'Manifest'
}

{ #category : 'code-critics' }
ManifestDesignPatternStateTests class >> ruleCodeCruftLeftInMethodsRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMethodDefinition #(#GumballMachineTest #testTurnCrank #false)) #'2026-07-14T12:22:45.151527+09:00') #(#(#RGClassDefinition #(#GumballMachineTest)) #'2026-07-14T12:30:40.054456+09:00') )
]
