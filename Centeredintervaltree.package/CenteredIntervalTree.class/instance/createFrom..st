initialization
createFrom: aCollectionOfIntervals 
 |iMid iLeft iRight|

	xMid:=(aCollectionOfIntervals collect:[:each | each end]) median.
		iMidLeft:=(aCollectionOfIntervals select:[:each | each start<= xMid and:[each end >= xMid]]) asSortedCollection:[:a :c | a start < c start].
		iMidRight:=iMidLeft asSortedCollection:[:a :c | a end < c end].
		leftSubTree:=CenteredIntervalTree from:(aCollectionOfIntervals select: [:each | each end < xMid]).
		rightSubTree:=CenteredIntervalTree from:(aCollectionOfIntervals select: [:each | each start > xMid]).
	