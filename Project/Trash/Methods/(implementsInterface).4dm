//%attributes = {}
C_TEXT:C284($1;$interfaceName)
C_OBJECT:C1216($2;$instance)
$interfaceName:=$1
$instance:=$2

Case of 
	: ($interfaceName="IPublisher")
		ASSERT:C1129(OB Is defined:C1231($instance;"publish");"Given object does not implement IPublisher interface")
		ASSERT:C1129(OB Is defined:C1231($instance;"subscribe");"Given object does not implement IPublisher interface")
		ASSERT:C1129(OB Is defined:C1231($instance;"unsubscribe");"Given object does not implement IPublisher interface")
	: ($interfaceName="ISubscriber")
		ASSERT:C1129(OB Is defined:C1231($instance;"onDataChange");"Given object does not implement ISubscriber interface")
	Else 
		ASSERT:C1129(False:C215;"Unknown interface name "+$interfaceName)
End case 