test -modification on class
testClassSimpleTestCase
"In this test we want to assert that SmartTest finds the test owned directly by a class."
	<CORATestBlacklisted>
	| testsFound  |
	testsFound := self searchTestMethodsForAClass: ('SmTClassModificationOnClass','SimpleTestCase') asClass.
	self assert: testsFound size equals: 1.
	self assert: (testsFound includes: ((('SmTClassModificationOnClass','SimpleTestCase') asClass  >> ('testModificationOnClass','SimpleTestCase') asSymbol) asRingDefinition )).