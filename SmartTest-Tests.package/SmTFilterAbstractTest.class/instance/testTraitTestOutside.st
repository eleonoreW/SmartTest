test - extension method
testTraitTestOutside
	<CORATestBlacklisted>
	| testsFound |
	testsFound := smartFinder smtFinder searchTestsForATrait: SmTTrait.
	self assert: (testsFound includes: ((('SmT','TraitTest') asClass >> ('testTraitMethod1','Inside') asSymbol) asRingDefinition )).

	