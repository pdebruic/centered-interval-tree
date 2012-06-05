*centeredintervaltree
includes: aNumberOrInterval
	^(aNumberOrInterval respondsTo: #end)
		ifTrue: [ start <= aNumberOrInterval end and: [ stop >= aNumberOrInterval start ] ]
		ifFalse: [ self rangeIncludes: aNumberOrInterval ]