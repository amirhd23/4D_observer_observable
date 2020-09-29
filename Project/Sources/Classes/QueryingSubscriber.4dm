Class extends AbstractSubscriber

Function onDataChange
	C_VARIANT:C1683($time;$1)
	$time:=$1
	  //not caring about value of time
	
	C_OBJECT:C1216(queryResult)
	C_LONGINT:C283($numberOfRecords)
	queryResult:=New object:C1471
	$numberOfRecords:=ds:C1482.Documents.query("type = :1";"Invoice").length
	queryResult.invoices:=$numberOfRecords
	$numberOfRecords:=ds:C1482.Documents.query("type = :1";"Payment").length
	queryResult.payments:=$numberOfRecords
	$numberOfRecords:=ds:C1482.Documents.query("type = :1";"Wire").length
	queryResult.wires:=$numberOfRecords
	
	