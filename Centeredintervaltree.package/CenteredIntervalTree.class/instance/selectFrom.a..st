initialization
selectFrom: aSortedCollection a: pointValue
^(aSortedCollection select:[:each | each includes: pointValue ]) asOrderedCollection 