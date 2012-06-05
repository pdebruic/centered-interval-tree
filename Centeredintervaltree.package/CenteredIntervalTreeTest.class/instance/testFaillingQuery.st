as yet unclassified
testFaillingQuery
	|cit tspan |
	cit:=CenteredIntervalTree fromTimespans: timespans.
	tspan:=Timespan starting: pointInTime + 5000 days duration: 1 hour.
	self assert: (cit intervalsThatIncludeTimespan: tspan) isEmpty. "tspan is after the latest timespan in the tree"
	self assert: (cit intervalsThatIncludeTime: pointInTime + 5000 days) isEmpty.
	tspan:=Timespan starting: pointInTime - 5000 days duration: 1 hour.	
	self assert: (cit intervalsThatIncludeTimespan: tspan) isEmpty. "tspan is before  the earliest timespan in the tree"
	self assert: (cit intervalsThatIncludeTime: pointInTime - 5000 days) isEmpty.
	