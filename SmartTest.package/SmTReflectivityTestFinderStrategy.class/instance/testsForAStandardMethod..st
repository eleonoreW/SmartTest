accessing
testsForAStandardMethod: aCompiledMethod
	self methodToTest
		at: aCompiledMethod methodReference
		ifAbsent: [ self searchRelativeTestForMethod: aCompiledMethod ].
	^ (self testsForMethod: aCompiledMethod) collect: #compiledMethod