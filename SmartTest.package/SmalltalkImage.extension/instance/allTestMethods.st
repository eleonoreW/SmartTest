*SmartTest
allTestMethods

	^(globals allClasses flatCollect: #methods) select: #isTestMethod 