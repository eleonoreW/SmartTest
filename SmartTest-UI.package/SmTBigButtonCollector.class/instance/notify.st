accessing
notify
	| aTestResult |
	aTestResult := SmTRules runner
		runCases:
			(self collector
				collect:
					[ :aMethodReference | aMethodReference methodClass selector: aMethodReference selector ]).
	self
		collector:
			(self collector
				reject: [ :a | 
					((TestResult historyAt: a methodClass) at: #passed)
						includes: a selector ]).
	self updateNumberOfTheProgressCircle.
	self changeColorFromTestResult: aTestResult.
	morph fillFailedTestListFromTestResult: aTestResult