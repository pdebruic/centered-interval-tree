initialization
intervalsThatIncludeRange: aRange

	^
		(self checkLeftSideForRange:aRange) , (self checkRightSideForRange: aRange) , (self checkForOverlap: aRange)
		
