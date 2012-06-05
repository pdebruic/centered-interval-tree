initialization
intervalsThatIncludePoint: aPoint
	^ (self checkLeftSideFor: aPoint) , (self checkRightSideFor: aPoint)