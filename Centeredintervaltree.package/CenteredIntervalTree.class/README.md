This is faster to find all intersecting timespans from a collection of timespans than selecting all intersections across a collection. It is also faster than a DateTree.  The querying method #intervalsThatInclude: returns a collection, which may need to be converted into a set.  

If you use the Timespan specifc creation method (#fromTimespans:) the timespans are converted into Intervals.  The creation and querying of trees created from Intervals is much faster than that of Timespans.  The querying methods (#intervalsThatIncludeTime:,  #intervalsThatIncludeTimespan:) return a set.  



The implementation and ideas behind the structure come from here: https://secure.wikimedia.org/wikipedia/en/wiki/Interval_tree

and: 

http://brettwalenz.org/2010/09/28/centered-interval-trees/