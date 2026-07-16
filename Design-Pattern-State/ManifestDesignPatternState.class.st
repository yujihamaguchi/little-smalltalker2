"
Please describe the package using the class comment of the included manifest class. The manifest class also includes other additional metadata for the package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : 'ManifestDesignPatternState',
	#superclass : 'PackageManifest',
	#category : 'Design-Pattern-State-Manifest',
	#package : 'Design-Pattern-State',
	#tag : 'Manifest'
}

{ #category : 'code-critics' }
ManifestDesignPatternState class >> ruleCodeCruftLeftInMethodsRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMethodDefinition #(#GumballMachine #turnCrank #false)) #'2026-07-14T12:22:25.848223+09:00') )
]
