parsing
extractPackageBaseName: aPackageName
	^(aPackageName substrings: '-') at: 1