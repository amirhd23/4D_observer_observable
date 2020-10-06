
If (Form event code:C388=On Load:K2:1)
	C_OBJECT:C1216(publisher;$subscriber)
	publisher:=cs:C1710.Publisher.new()
	$subscriber:=cs:C1710.QueryingSubscriber.new()
	publisher.subscribe($subscriber)
	
	SET TIMER:C645(60*3)  //every 3 seconds
End if 

If (Form event code:C388=On Timer:K2:25)
	publisher.publish(Timestamp:C1445)
End if 