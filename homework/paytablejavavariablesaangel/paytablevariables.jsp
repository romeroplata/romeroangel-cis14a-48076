<script>
/*
	Angel Romero
	09/28/20014
	pay table
*/
</script>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>pay table</title>
</head>

<body>
<h1>Pay Table</h1>

<table width="600" border="1">
  <tr>
  	<th>Hours Worked</th>
    <th> Pay Rate</th>
    <th> Gross Pay</th>
    <th>Taxes 10%</th>
    <th>Net Pay</th>
   
  </tr>
<script>
//declare variables
var hours = 0;
var payRate = 10;
var grossPay = hours*payRate;

var ovt=20;
var ovt2=40;
var taxRate=10;

	//For - Loop
	for(var hours=0; hours<=72; hours++){
		if(hours<=ovt)grossPay=hours*payRate;
		if(hours>ovt&&hours<=ovt2)grossPay=hours*payRate+(hours-ovt)*payRate;
		if(hours>ovt2)grossPay=hours*payRate+(hours-ovt)*payRate+(hours-ovt2)*payRate;
		document.write( "<tr>");
		document.write( "<td>"+hours+" Hours</td>");
	
		document.write("<td>$ "+payRate.toFixed(2)+"</td>");
	    document.write( "<td>$ "+grossPay.toFixed(2)+"</td>");
			var taxes = grossPay*taxRate/100;
		document.write( "<td>$ "+taxes.toFixed(2)+"</td>");
		var netPay=grossPay-(grossPay*taxRate/100);
	    document.write("<td>$ "+netPay.toFixed(2)+"</td>");
		document.write( "</tr>");
		
		
		
	}
	
	
</script>
</table>
</body>
</html>