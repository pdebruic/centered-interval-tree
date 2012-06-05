initialization
checkRightSideFor: aPoint
	^ aPoint > xMid
		ifTrue: [ (self selectFrom: iMidRight a: aPoint)  , (rightSubTree intervalsThatInclude: aPoint) ]
		ifFalse: [ EmptyCollection  ]