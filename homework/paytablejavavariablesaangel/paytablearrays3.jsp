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

<script>
//declare variables
var payRate=10;
var taxRate=10;
var ovt=20;
var ovt2=40;
var str="";
//declare arrays
var hours=[];
var payRates=[];
var grossPay=[];
var tax=[];
var netPay=[];
//initialize the first element
hours[0]=0;
payRates[0]=10;
grossPay[0]=0;
tax[0]=10;
netPay[0]=0;

//populate arrays
for(var hour=1; hour<=20; ++hour){

	hours[hour]=hour;
	payRates[hour]=payRate;
	grossPay[hour]=hours[hour]*payRates[hour];
	tax[hour]=grossPay[hour]*taxRate/100;
	netPay[hour]=grossPay[hour]-tax[hour];
}
for(var hour=21; hour<=40; ++hour){

	hours[hour]=hour;
	payRates[hour]=payRate;
	grossPay[hour]=hours[hour]*payRates[hour]+(hours[hour]-ovt)*payRate;
	tax[hour]=grossPay[hour]*taxRate/100;
	netPay[hour]=grossPay[hour]-tax[hour];
}
for(var hour=41; hour<=72; ++hour){

	hours[hour]=hour;
	payRates[hour]=payRate;
	grossPay[hour]=hours[hour]*payRates[hour]+(hours[hour]-ovt)*payRate+(hours[hour]-ovt2)*payRate;
	tax[hour]=grossPay[hour]*taxRate/100;
	netPay[hour]=grossPay[hour]-tax[hour];
}

document.write("<p>si trabaja</p>");
</script>
<table width="600" border="1">
  <tr>
  	<th>Hours Worked</th>
    <th> Pay Rate</th>
    <th> Gross Pay</th>
    <th>Taxes 10%</th>
    <th>Net Pay</th>
   
  </tr>
  <script>
  for(var hour=1; hour<=72; ++hour){	
  
 
	  str+="<tr>";
	  str+=("<td>"+hours[hour]+"</td>");
	   str+=("<td>"+payRates[hour].toFixed(2)+"</td>");
	    str+=("<td>"+grossPay[hour].toFixed(2)+"</td>");
		 str+=("<td>"+tax[hour].toFixed(2)+"</td>");
		  str+=("<td>"+netPay[hour].toFixed(2)+"</td>");
		  str+="</tr>";
  }
 
  document.write(str);
  document.write("no se que Hacer");
  
  
	</script>
    </table>


<script>document.write("mmmmmmmmm");</script>
</body>
</html>