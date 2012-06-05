as yet unclassified
testEnclosedTimespan
	|cit tspan |
	cit:=CenteredIntervalTree fromTimespans: timespans.
	tspan:=Timespan starting: pointInTime + 1 hour  duration: 1 hour.
	self assert: (cit intervalsThatIncludeTimespan: tspan) notEmpty. 