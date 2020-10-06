Class extends AbstractObserver

Function update
	var $1,$data : Variant
	$data:=$1
	ALERT:C41("Subscriber with ID. "+This:C1470.ID+", data received "+JSON Stringify:C1217($data))