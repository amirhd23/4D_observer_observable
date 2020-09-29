//%attributes = {}
C_TEXT:C284($methodName;$1)
$methodName:=$1
If (Error=0)
	ON ERR CALL:C155(Current method name:C684)
	EXECUTE METHOD:C1007($methodName)
	C_OBJECT:C1216($0)
	$0:=cs:C1710.Exception.new(Error;"Exception has been thrown")
End if 


