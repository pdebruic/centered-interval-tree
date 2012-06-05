initialization
checkLeftSideForRange: aRange
	^ aRange start < xMid
		ifTrue: [ (self selectFrom: iMidLeft a: aRange end) , (leftSubTree intervalsThatIncludeRange: aRange) ]
		ifFalse: [ EmptyCollection  ]