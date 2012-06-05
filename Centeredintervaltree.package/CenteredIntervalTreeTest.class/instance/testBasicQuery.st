as yet unclassified
testBasicQuery
	|cit int |
	cit:=CenteredIntervalTree fromTimespans: timespans.
	self assert: (cit intervalsThatIncludeTimespan: timespan) notEmpty.
	self assert: (cit intervalsThatIncludeTime: pointInTime) notEmpty.
	cit:=CenteredIntervalTree from: intervalDatabase.
	int:=intervalDatabase atRandom.
	self assert: (cit intervalsThatInclude: int) notEmpty.
	self assert: (cit intervalsThatInclude: int start) notEmpty.
	self assert: (cit intervalsThatInclude: int end) notEmpty.