Class constructor
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