as yet unclassified
testStartAndEndMatched
	|cit tspan |
	cit:=CenteredIntervalTree fromTimespans: timespans.
	tspan:=Timespan starting: pointInTime duration: 1 hour.
	self assert: (cit intervalsThatIncludeTimespan: tspan) notEmpty. "start matches"
		tspan:=Timespan starting: pointInTime duration: 8 hour.
	self assert: (cit intervalsThatIncludeTimespan: tspan) notEmpty. "exact overlap" 
		tspan:=Timespan starting: pointInTime + 7 hours duration: 1 hour.
	self assert: (cit intervalsThatIncludeTimespan: tspan) notEmpty. "end matches"
	