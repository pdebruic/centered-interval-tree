as yet unclassified
testQuerySpeed
	| cit intersectionTime citTime |
	intersectionTime := [ 10 timesRepeat: [ timespans select: [ :each | (each intersection: timespan) notNil ] ] ]
		timeToRun.
	cit := CenteredIntervalTree fromTimespans: timespans.
	citTime := [ cit := CenteredIntervalTree fromTimespans: timespans.
		10 timesRepeat: [ cit intervalsThatIncludeTimespan: timespan ] ] timeToRun.
	self assert: citTime < intersectionTime