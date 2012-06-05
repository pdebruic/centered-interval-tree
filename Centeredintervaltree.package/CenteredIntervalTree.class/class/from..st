instance creation
from: aCollectionOfIntervals

	^ aCollectionOfIntervals isEmpty
		ifTrue: [ CenteredIntervalTreeSentinelNode default ]
		ifFalse: [ self new createFrom: aCollectionOfIntervals ]