tests
testRunCaseNotifyIconYellow
	| case anIcon |
	case := self class selector: #fail.
	anIcon := IconicButton new.
	self should: [SmTRunnerSettings runner runCase: case notifyIcon: anIcon] raise: TestFailure.
	self assert: anIcon labelGraphic equals: (self iconNamed: #testYellowIcon)