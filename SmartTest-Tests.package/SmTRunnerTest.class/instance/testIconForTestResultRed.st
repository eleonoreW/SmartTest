tests
testIconForTestResultRed
	| case result |
	case := self class selector: #error.
	result := case run.
	self assert: (runner iconForTestResultOf: result) equals: (self iconNamed: #testRedIcon)
	