accessing
availableTestMethods
	"Collect the test methods that can be used with the wrapper to fill completely the methodToTest dictionnary"
	^ (self availableTestPackages flatCollect: [ :aPackage | aPackage methods ])  reject: [ :method | method methodClass = SmTTestCoverage ]