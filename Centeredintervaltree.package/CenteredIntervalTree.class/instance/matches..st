initialization
matches: anIntervalTree
	|matches|
	matches:=OrderedCollection new.
	anIntervalTree contents do:[:each |matches addAll: (self intervalsThatIncludeRange: each) ].
	^matches