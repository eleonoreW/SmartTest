tests
testStandardMethodThirdLevelSenders
	| testsFound | 
	testsFound := self searchTestMethodsFor: #method3.
	
	self assert: (testsFound includes: self dependentTestMethod)