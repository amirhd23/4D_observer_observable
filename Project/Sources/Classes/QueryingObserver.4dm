Class extends AbstractObserver

Class constructor
	Super:C1705()
	This:C1470.numberOfInovices:=0
	This:C1470.numberOfPayments:=0
	This:C1470.numberOfWires:=0
	
Function update
	
	This:C1470.numberOfInovices:=ds:C1482.Documents.query("type = :1";"Invoice").length
	This:C1470.numberOfPayments:=ds:C1482.Documents.query("type = :1";"Payment").length
	This:C1470.numberOfWires:=ds:C1482.Documents.query("type = :1";"Wire").length
	
	