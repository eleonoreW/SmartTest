tests
testStandardMethodSecondLevelSendersOutsideTestInsideWithRefInClass
	<CORATestBlacklisted>
	"method1 is called by method 2,itself called by testMethod1"
	"P1 : method1 and testMethod2
	 P2 : method2, the reference is made in the class of method2"
	"In order to be sure that this test is not considered as a caller of the modified method and a reference to its class, we don't use directly the class and the method but go through their name with a concatenation and then transform them into class or method"
	
	| testsFound |
	testsFound := self searchTestMethodsFor: ( ('SmTClassP1SecondLevelSendersOutsideTestInsideWithRefIn','Class') asClass >> ('method1SecondLevelSendersOutsideTestInsideWithRefIn','Class') asSymbol).
	self assert: testsFound size equals: 1.
	self assert: (testsFound includes: (('SmTClassTest','P1') asClass >> ('testMethod2SecondLevelSendersOutsideTestInsideWithRefIn','Class') asSymbol) asRingDefinition ).
	