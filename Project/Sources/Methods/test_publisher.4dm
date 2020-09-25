//%attributes = {}
C_OBJECT:C1216($publisher;$subsriber1;$subscriber2)
$publisher:=cs:C1710.Publisher.new()
$subscriber1:=cs:C1710.AlertingSubscriber.new()
$publisher.subscribe($subscriber1)

$subscriber2:=cs:C1710.AlertingSubscriber.new()
$publisher.subscribe($subscriber2)
$publisher.publish("test")

$publisher.unsubscribe($subscriber1)
$publisher.publish("test")

