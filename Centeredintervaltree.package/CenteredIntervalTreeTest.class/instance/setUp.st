as yet unclassified
setUp

pointInTime:=DateAndTime year:2011 month:10 day: 13 hour: 12 minute: 0 second: 0 offset: Duration zero.
timespans:=(1 to: 100) collect:[:each |(Timespan starting: (pointInTime + (each-50) days) duration: (8 hours))] .

timespan:=Timespan starting: pointInTime + 15 minutes duration: 10 hours.

intervalDatabase:=(1to:10) collect:[:each | each to:(each * 20)].
