accessing
availablePackages
	"Collect the packages that can be used with the wrapper to fill completely the methodToTest dictionnary"
	| availablePackages |
	(availablePackages := RPackageOrganizer default packages
		reject: [ :package | 
			(package packageName beginsWith: 'Kernel')
				or: [ (package packageName beginsWith: 'Collections')
						or: [ (package packageName beginsWith: 'GT')
or: [ (package packageName beginsWith: 'Ring')
								or: [ (package packageName beginsWith: 'Regex')
										or: [ (package packageName beginsWith: 'Exceptions')
												or: [ (package packageName beginsWith: 'SUnit')
														or: [ (package packageName beginsWith: 'System') or: [ (package packageName endsWith: 'Tests')
																or: [ package packageName includesSubstring: 'HudsonBuildTools20' caseSensitive: false ] ] ] ] ] ] ] ] ] ])
		sort: [ :a :b | a packageName < b packageName ].
	^ availablePackages