
If (Form event code:C388=On Load:K2:1)
	C_OBJECT:C1216(observable;$observer)
	observable:=cs:C1710.Observable.new()
	$observer:=cs:C1710.QueryingObserver.new()
	observable.addObserver($observer)
	
	SET TIMER:C645(60*3)  //every 3 seconds
End if 

If (Form event code:C388=On Timer:K2:25)
	observable.notify(Timestamp:C1445)
End if 