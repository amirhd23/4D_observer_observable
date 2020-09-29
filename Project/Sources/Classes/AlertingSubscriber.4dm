Class extends AbstractSubscriber


Function onDataChange
	C_VARIANT:C1683($data;$1)
	$data:=$1
	ALERT:C41("Subscriber no."+String:C10(This:C1470.number)+", data received "+JSON Stringify:C1217($data))