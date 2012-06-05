querying
intervalsThatIncludeTime: aTime
	
	 ^(self intervalsThatIncludePoint: aTime asSeconds) collect:[:each | Timespan fromSecondsInterval: each]