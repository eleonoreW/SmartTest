test - standard method - second level sender
testStandardMethodSecondLevelSendersOutsidePackageWithTestInside
	<CORATestBlacklisted>
	"method1 is called by method2, which itself is called by testMethod2, thus testMethod2 should not be found.
	We go out of the package once so it's normal hat the test is not found."
	"In order to be sure that this test is not considered as a caller of the modified method and a reference to its class, we don't use directly the class and the method but go through their name with a concatenation and then transform them into class or method"
	
	| testsFound |
	testsFound := self searchTestMethodsFor: ( ('SmTClass','P1') asClass >> ('method1','SecondLevelSendersOutsidePackageWithTestInside') asSymbol).
	self assert: (testsFound isEmpty ).	
	self deny: (testsFound includes: testMethod2SecondLevelSendersOutsidePackageWithTestInside ).
	
	
	