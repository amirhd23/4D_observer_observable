//%attributes = {}
C_OBJECT:C1216($newDocument)
$newDocument:=ds:C1482.Documents.new()
C_TEXT:C284($type)
C_LONGINT:C283($randomTypeNumber)
$randomTypeNumber:=Random:C100%3+1
Case of 
	: ($randomTypeNumber=1)
		$type:="Invoice"
	: ($randomTypeNumber=2)
		$type:="Payment"
	: ($randomTypeNumber=3)
		$type:="Wire"
	Else 
		ASSERT:C1129(False:C215;"Invalid number")
End case 
$newDocument.type:=$type
$newDocument.save()