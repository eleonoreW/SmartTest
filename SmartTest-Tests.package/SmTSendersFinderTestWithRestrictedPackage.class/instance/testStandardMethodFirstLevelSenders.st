tests
testStandardMethodFirstLevelSenders
	"In class, the research is limited to the SmartTest-Tests-Data package and is static. So the assertions are different. There should be only one test found that call the method2 message"

	<CORATestBlacklisted>
	| testsFound |
	testsFound := self searchTestMethodsFor: SmTClass >> #method2.
	self assert: testsFound size equals: 1.
	self assert: (testsFound includes: testMethod2).
	self deny: (testsFound includes: testMethod1).
	self deny: (testsFound includes: testMethod3).
	self deny: (testsFound includes: testMethod4)