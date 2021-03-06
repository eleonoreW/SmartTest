settings
settingsOn: aBuilder
	<systemsettings>
	(aBuilder group: #SmartTest)
		with: [ (aBuilder group: #SmartFinder)
				order: 7;
				with: [ (aBuilder pickOne: #finder)
						order: 0;
						label: 'SmartTest finder';
						target: self;
						parent: #SmartFinder;
						domainValues: (SmTTestFinderStrategy allSubclasses select: #isConcreteFinder);
						description: 'The finder defines how CORA searchs the relative test of a method'.
					(aBuilder pickOne: #cacheStrategy)
						order: 2;
						label: 'SmartTest Cache';
						target: self;
						parent: #SmartFinder;
						domainValues: SmTCacheStrategy allSubclasses;
						description:
							'To visualize the current cache
				SmTCacheSettings cache new currentCache'.
					(aBuilder pickOne: #runner)
						order: 3;
						label: 'SmartTest test runner';
						target: self;
						parent: #SmartFinder;
						domainValues: SmTRunnerStrategy allSubclasses;
						description: 'The test runner defines if the tests are run in a debug way or not'.
					(aBuilder pickOne: #strategy)
						order: 1;
						label: 'SmartTest testing strategy';
						target: self;
						parent: #SmartFinder;
						domainValues: SmTTestingStrategy allSubclasses;
						description: 'The testing strategy defines when SmartTest will run the test it has found.'.
					(aBuilder pickOne: #filter)
						order: 0.5;
						label: 'SmartTest filter';
						target: self;
						parent: #SmTFilter;
						domainValues: SmTFilterStrategy allSubclasses;
						description: 'The testing strategy defines when SmartTest will run the test it has found.' ].
					(aBuilder setting: #packagesRegex)
		label: 'SmartTest filter Regex configuration';
		target: self;
		parent: #SmTFilter;
		ghostHelp: 'SmartTe|Star*Wnrs';
		notInStyle;
		default: '';
		description:
			'Change the value to scope the package you want to explore.
If you want to check the packages are well detected,run 
	SmTFilterSpecifyPackageSettings selectedPackage'.
			(aBuilder group: #SmTActivationRenrakuOption)
				order: 6;
				with: [ (aBuilder setting: #activated)
						target: self;
						order: 0.01;
						label: 'SmartTest Reneraku Integration Activated';
						description: 'Toogle to activate/disable the reneraku integration of the plugin' ].
			(aBuilder setting: #shouldTryToFindTestForDynamic)
				parent: 'Beta';
				target: self;
				order: 0.04;
				label: 'Try to find for Dynamic ';
				description:
					'When you click in a method, and have selected a Dynamix finder, we''''are updating the cache for it execution
	(BETA)'.
			(aBuilder group: #fill)
				label: 'Fill cache';
				target: self;
				parent: #Beta;
				dialog: [ SimpleButtonMorph new
						target: self;
						label: 'Fill cache';
						actionSelector: #fillCache;
						themeChanged;
						yourself ];
				description: 'Fill the cache with selected package' ].
	(aBuilder group: #reset)
		label: 'Reset Cache';
		target: self;
		parent: #SmartTest;
		order: 9;
		dialog: [ SimpleButtonMorph new
				target: self testFinder;
				label: 'Reset Current SmartTest Cache';
				actionSelector: #resetCache;
				themeChanged;
				yourself ];
		description:
			'Reset the cache of SmartTest
		SmTRules testFinder currentCache'.
	(aBuilder group: #Beta)
		parent: #SmartTest;
		order: 10