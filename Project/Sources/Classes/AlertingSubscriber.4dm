Class extends AbstractSubscriber

Class constructor
	Super:C1705()
	Use (cs:C1710.AlertingSubscriber)
		If (OB Is defined:C1231(cs:C1710.AlertingSubscriber;"counter"))
			This:C1470.number:=cs:C1710.AlertingSubscriber.counter+1
			cs:C1710.AlertingSubscriber.counter:=This:C1470.number
		Else 
			cs:C1710.AlertingSubscriber.counter:=1
			This:C1470.number:=1
		End if 
	End use 
	
Function onDataChange
	C_VARIANT:C1683($data;$1)
	$data:=$1
	ALERT:C41("Subscriber no."+String:C10(This:C1470.number)+", data received "+String:C10($data))