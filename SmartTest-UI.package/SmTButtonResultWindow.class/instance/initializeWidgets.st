accessing
initializeWidgets
	testList := IconListModel new.
	button := (SmTProgressCircle new
		controler: self;
		percentage: 100;
		extent: 400@200;
		color: Color gray) asSpecAdapter.
	
	buttonText := ('00' asStringMorph
		font: (LogicalFont familyName: 'Source Sans Pro' pointSize: 50) emphasis: 2;
		position: 60@60;
		color: Color white;
		yourself).
	
	self buttonMorph addMorphFront: buttonText.
		

	self focusOrder add: testList.