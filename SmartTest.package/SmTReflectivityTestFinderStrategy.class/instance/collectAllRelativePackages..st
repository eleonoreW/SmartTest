search
collectAllRelativePackages: aByteString
	^ RPackageOrganizer default packages select: [ :a | (self filter extractPackageBaseName: a packageName) = aByteString ]