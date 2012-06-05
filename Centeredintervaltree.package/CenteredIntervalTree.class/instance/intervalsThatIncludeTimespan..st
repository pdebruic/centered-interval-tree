querying
intervalsThatIncludeTimespan: aTimespan
	^ (self intervalsThatIncludeRange: (aTimespan start asSeconds to: aTimespan end asSeconds))
		collect: [ :each | Timespan fromSecondsInterval: each]