initialization
checkRightSideForRange: aRange
	^ aRange end > xMid
		ifTrue: [ (self selectFrom: iMidRight a: aRange start) , (rightSubTree intervalsThatIncludeRange: aRange) ]
		ifFalse: [ EmptyCollection  ]