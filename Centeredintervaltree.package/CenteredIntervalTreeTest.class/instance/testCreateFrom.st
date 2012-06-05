as yet unclassified
testCreateFrom
	|cit |
	cit:=CenteredIntervalTree fromTimespans: timespans.
	self assert: cit medianValue notNil.
	self assert: cit isEmpty equals: false.
