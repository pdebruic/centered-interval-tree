instance creation
fromTimespans: aCollectionOfTimespans


	 ^self from: (aCollectionOfTimespans collect:[:each| each start asSeconds to: each end asSeconds])