initialization
testRunningTestMethod1ToBuildCache
	<CORATestBlacklisted>
	self assert: smartFinder currentCache isEmpty.
	SmTClassTest run: #testMethod1.
	"Running the test fill the cache that is then no more empty but contains only the association between SmTClass>>method1 and SmTClassTest>>testMethod1"
	self assert: smartFinder currentCache isNotEmpty.

	"Not sure about the format of the dictionnary."
	self
		assert: (smartFinder currentCache at: (RGMethodDefinition className: 'SmTClass' selector: #method1 isMetaSide: false))
		equals: {(RGMethodDefinition className: 'SmTClassTest' selector: #testMethod1 isMetaSide: false)} asSet