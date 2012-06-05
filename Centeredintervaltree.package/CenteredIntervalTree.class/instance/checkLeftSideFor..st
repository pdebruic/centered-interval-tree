initialization
checkLeftSideFor: aPoint
	^ aPoint < xMid
		ifTrue: [ (self selectFrom: iMidLeft a: aPoint) , (leftSubTree intervalsThatInclude: aPoint) ]
		ifFalse: [ EmptyCollection ]