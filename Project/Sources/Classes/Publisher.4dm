Class constructor
	This:C1470.subscribers:=New collection:C1472
	
Function publish
	C_VARIANT:C1683($data;$1)
	$data:=$1
	For each ($sub;This:C1470.subscribers)
		$sub.onDataChange($data)
	End for each 
	
Function subscribe
	C_VARIANT:C1683($1;$subscriber)
	$subscriber:=$1
	ASSERT:C1129(OB Instance of:C1731($subscriber;cs:C1710.AbstractSubscriber))
	This:C1470.subscribers.push($subscriber)
	
Function unsubscribe
	C_VARIANT:C1683($1;$subscriber)
	$subscriber:=$1
	C_LONGINT:C283($index)
	$index:=This:C1470.subscribers.findIndex("findSubscriber";$subscriber.number)
	If ($index#-1)
		This:C1470.subscribers.remove($index)
	End if 
	
	
	