Class constructor
	This:C1470.observers:=New collection:C1472
	
Function notify
	var $1,$data : Variant
	$data:=$1
	For each ($observer;This:C1470.observers)
		$observer.update($data)
	End for each 
	
Function addObserver
	var $1,$observer : cs:C1710.AbstractObserver
	$observer:=$1
	ASSERT:C1129(OB Instance of:C1731($observer;cs:C1710.AbstractObserver))
	This:C1470.observers.push($observer)
	var $0 : cs:C1710.Unsubscriber
	$0:=cs:C1710.Unsubscriber.new(This:C1470;$observer)
	
Function removeObserver
	var $1,$observer : cs:C1710.AbstractObserver
	$observer:=$1
	var $index : Integer
	$index:=This:C1470.observers.findIndex("findObserver";$observer.getID())
	If ($index#-1)
		This:C1470.observers.remove($index)
	End if 
	
	
	