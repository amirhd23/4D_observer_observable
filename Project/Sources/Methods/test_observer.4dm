//%attributes = {}
C_OBJECT:C1216($observable;$observer1;$observer2;$unsubscriber)
$observable:=cs:C1710.Observable.new()
$observer1:=cs:C1710.AlertingObserver.new()
$unsubscriber:=$observable.addObserver($observer1)

$observer2:=cs:C1710.AlertingObserver.new()
$observable.addObserver($observer2)

$observable.notify("test")

$unsubscriber.removeObserver($observer1)
$observable.notify("test")






