*centeredintervaltree
fromSecondsInterval: anInterval
	^ self
		starting: (DateAndTime fromSeconds: anInterval start)
		ending: (DateAndTime fromSeconds: (anInterval end + 1))