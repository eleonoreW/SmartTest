accessing
collectAllRelativePackages: aByteString
	^ MonticelloRepositoryBrowser allManagers select: [ :a | (self filter extractPackageBaseName: a packageName) = aByteString ]