
If (Form event code:C388=On Load:K2:1)
	var observable : Object
	observable:=cs:C1710.Observable.new()
End if 

If (Form event code:C388=On Clicked:K2:4)
	var $observer : cs:C1710.AbstractObserver
	$observer:=cs:C1710.QueryingObserver.new()
	
	var $unsubscriber : cs:C1710.Unsubscriber
	$unsubscriber:=observable.addObserver($observer)
	
	$win:=Open form window:C675([Documents:1];"ObserverForm")
	DIALOG:C40([Documents:1];"ObserverForm";$unsubscriber;*)  // the object is passed to the form.
	
	SET TIMER:C645(60*2)  //every 3 seconds
End if 

If (Form event code:C388=On Timer:K2:25)
	randomGenerateDocument
	observable.notify()
End if 