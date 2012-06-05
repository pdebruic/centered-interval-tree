as yet unclassified
testFindAllTimespans
	| cit col |
	cit:=CenteredIntervalTree fromTimespans: timespans.
	col:=OrderedCollection new.
	timespans do:[:each | col addAll: (cit intervalsThatIncludeTimespan: each) asSet].
	self assert: col size equals: timespans size.
	self assert: col sort first equals: timespans sort first
