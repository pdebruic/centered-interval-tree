querying
intervalsThatInclude: aPointOrRange
	^ (aPointOrRange respondsTo: #start)
		ifTrue: [ self intervalsThatIncludeRange: aPointOrRange ]
		ifFalse: [ self intervalsThatIncludePoint: aPointOrRange ]