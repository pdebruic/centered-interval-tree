initialization
checkForOverlap: aRange
	| col |
	col := OrderedCollection new.

	iMidLeft
		do: [ :each | (aRange includes:each)
				ifTrue: [ col add: each ]
				ifFalse: [ ^ col ]] .
			^col
