helpers
initCache
	^ {((RGMethodDefinition
		className: 'SmTClass'
		selector: #method1
		isMetaSide: false)
		->
			{(RGMethodDefinition
				className: 'SmTClassTest'
				selector: #testMethod1
				isMetaSide: false).
			(RGMethodDefinition
				className: 'SmTClassTest'
				selector: #testMethod2
				isMetaSide: false)} asSet).
	((RGMethodDefinition
		className: 'SmTClass'
		selector: #method2
		isMetaSide: false)
		->
			{(RGMethodDefinition
				className: 'SmTClassTest'
				selector: #testMethod2
				isMetaSide: false)} asSet).
	((RGMethodDefinition
		className: 'SmTClass'
		selector: #method3:
		isMetaSide: false)
		->
			{(RGMethodDefinition
				className: 'SmTClassTest'
				selector: #testMethod1
				isMetaSide: false).
			(RGMethodDefinition
				className: 'SmTClassTest'
				selector: #testMethod2
				isMetaSide: false).
			(RGMethodDefinition
				className: 'SmTClassTest'
				selector: #testMethod3
				isMetaSide: false)} asSet).
	((RGMethodDefinition
		className: 'SmTClass'
		selector: #method4
		isMetaSide: false)
		->
			{(RGMethodDefinition
				className: 'SmTClassTest'
				selector: #testMethod2
				isMetaSide: false).
			(RGMethodDefinition
				className: 'SmTClassTest'
				selector: #testMethod3
				isMetaSide: false).
			(RGMethodDefinition
				className: 'SmTClassTest'
				selector: #testMethod4
				isMetaSide: false)} asSet)} asDictionary