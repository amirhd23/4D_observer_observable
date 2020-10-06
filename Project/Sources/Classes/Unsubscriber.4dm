Class constructor
	var $1,$observable : cs:C1710.Observable
	var $2,$observer : cs:C1710.AbstractObserver
	$observable:=$1
	$observer:=$2
	
	ASSERT:C1129(OB Instance of:C1731($observer;cs:C1710.AbstractObserver))
	ASSERT:C1129(OB Instance of:C1731($observable;cs:C1710.Observable))
	
	This:C1470.observer:=$observer
	This:C1470.observable:=$observable
	
Function removeObserver
	This:C1470.observable.removeObserver(This:C1470.observer)