<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="church.finance.Member"%>
<%
	//HashMap<Integer, String> issues = (HashMap<Integer, String>) session.getAttribute("issues");
	ArrayList<Member> memberList = (ArrayList<Member>) session.getAttribute("memberList");
	//String designation = (String)session.getAttribute("designation");
%>

<html>
<head>
<title>Member</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
/*space*/
body>#pagediv form .field_container {
	margin: 0 auto 12px;
	text-align: left;
	width: auto;
}
/*field_container*/
body>#pagediv form .field_container {
	margin: 0 auto 12px;
	text-align: left;
	width: auto;
	box-shadow: 0 0 8px #CCC;
	-moz-box-shadow: 0 0 8px #CCC;
	-webkit-box-shadow: 0 0 8px #CCC;
	display: inline-block;
	font-size: 18px;
	height: 46px;
	cursor: pointer;
	line-height: 46px;
	padding: 0 25px;
}

label {
	display: inline-block;
	text-align: left;
	width: 100px;
}
/*form box*/
body>#pagediv form {
	border-radius: 10px;
	-moz-border-radius: 10px;
	-webkit-border-radius: 10px;
	box-sizing: border-box;
	-moz-box-sizing: border-box;
	-wekbit-box-sizing: border-box;
	border: 8px solid #F5F3F0;
	display: inline-block;
	margin: 40px auto 0;
	padding: 100px 160px 50px;
	position: relative;
	width: 100%;
	z-index: 0;
}
/*shade button and size*/
button {
	margin: 0;
	padding: 0;
	border: 0;
	font-weight: normal;
	font-style: normal;
	font-size: 100%;
	line-height: 1;
	font-family: inherit;
	right: 0px;
}

body>#pagediv form button .button_text {
	border-radius: 7px;
	-moz-border-radius: 7px;
	-webkit-border-radius: 7px;
	box-shadow: 0 0 8px #CCC;
	-moz-box-shadow: 0 0 8px #CCC;
	-webkit-box-shadow: 0 0 8px #CCC;
	background-color: #f6f6f6;
	background-repeat: repeat-x;
	color: black;
	display: inline-block;
	font-size: 16px;
	height: 46px;
	cursor: pointer;
	line-height: 46px;
	padding: 0 25px;
	text-shadow: 1px 1px 0 #fff;
	width: auto;
}

body>#line {
	border-top: 8px solid #f90;
	width: 100%;
}

ul#tabnavigation {
	list-style: none;
	position: relative;
	z-index: 2;
	top: 1px;
	display: table;
	border-left: 0px solid #f5ab36;
}

ul#tabnavigation li {
	float: left;
}

ul#tabnavigation li a {
	background: #ffd89b;
	color: #222;
	display: block;
	padding: 6px 15px;
	text-decoration: none;
	float: left;
	width: 75px;
	text-align: center;
	border-right: 1px solid #f5ab36;
	border-top: 1px solid #f5ab36;
	border-right: 1px solid #f5ab36;
	margin-right: 8px;
	font-family: "Arial Black", Gadget, sans-serif;
}

ul#tabnavigation li a:hover {
	background: #344385;
	color: #fff;
	text-shadow: 1px 1px 1px #000;
}

ul#tabnavgation li a.selected {
	border-bottom: 1px solid #fff;
	color: #344385;
	background: #fff;
}

#etable {
	margin: 0px auto;
	font-family: Tahoma, Arial, Verdana, sans-serif;
	font-size: 13px;
	padding: 4px;
	cellpadding: 0;
	cellspacing: 0
}

.head {
	background: lightseagreen;
}

#etable tr td {
	padding: 8px;
	border: 1px solid #d1d1d1;
}

.head td {
	border: 0px !important;
}

.tb_label {
	height: 64px;
	border: 1px solid #f5ab36;
	margin-right: 10px;
	font-family: "Arial black", Gadget, sans-serif;
	color: #000;
	text-decoration: none;
	padding: 10px;
	text-align: center;
	background-color: #ffd89b;
}

input[type='text'] {
	padding: 3px 3px;
	width: 187px;
}

.hightlight {
	border: 1px solid #9F1319;
	background: url(img/iconCaution.gif) no-repeat 2px !important;
}
</style>
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.11/css/jquery.dataTables.min.css" />
</head>
<body>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.11/js/jquery.dataTables.min.js"></script>
	<script>
			$(function() {
				$('#etable').DataTable();		
			});
	</script>
<script type="text/javascript">
    
function onShowTab(index) {
    var numberTabs = 2;
	for (var i = 1; i < (numberTabs + 1); i++) {
	
		var tabTitle = document.getElementById('tab-title-' + i);
		tabTitle.style.backgroundColor = "";
		tabTitle.style.borderBottom = "";
		
		var tabSheet = document.getElementById('tab-sheet-' + i);
		tabSheet.style.display = "none";
	}
	
	var tabTitle = document.getElementById('tab-title-' + index);
	//tabTitle.style.backgroundColor = "#E1F5A9";
	tabTitle.style.borderBottom = "0px";
	
	var tabSheet = document.getElementById('tab-sheet-' + index);
	tabSheet.style.display = "block";
}
function logout(){
	window.location="login.html";
}
</script>
	<h1 align="center">CHURCH FINANCIAL RECORD KEEPING</h1>
	<div id="line"></div>
	<div align="right">	
		<!-- <button type="submit" onclick="logout()">
			<span class="button_text">Logout</span>
		</button> -->	
		<input type="button" class="button_text" value="Logout" onclick="logout()">
	</div>
	<ul id="tabnavigation">
		<li><a class="selected" href="member.jsp">Member</a></li>
		<li><a href="fund.html">Fund</a></li>
		<li><a href="donation.html">Donation</a></li>
		<li><a href="reports.html">Report</a></li>
	</ul>

	<div id="pagediv">
		<form id="page_form" action="member" method="POST">
			<table width="100%">
				<tbody>
					<tr>
						<td>
							<table>
								<tbody>
									<tr>
										<td id="tab-title-1" style="border-bottom: 0px;"><a
											href="#" class="tb_label"
											style="font-weight: bold; text-decoration: none;"
											onclick="onShowTab(1)">Add</a></td>

										<td id="tab-title-2"><a href="#" class="tb_label"
											style="font-weight: bold; text-decoration: none;"
											onclick="onShowTab(2)">View</a></td>
									</tr>
									<tr>
										<td style="height: 0.5em;">&#160;</td>
									</tr>
									<tr>
										<td style="height: 0.5em;">&#160;</td>
									</tr>
								</tbody>
							</table>
						</td>
					</tr>
					<tr>
						<td>
							<div id="tab-sheet-1" style="display: block;">
								<label>Envelope No.</label>
								<div class="field_container" align="left">
									<input type="text" name="envelopeNo" pattern="[1-9]{1}[0-9]{2}"
										title="It should be a 3 digit number"
										style="width: 150px; border: 1px" required />
								</div>
								<span style="padding: 0 40px">&nbsp;</span> <label>First Name</label>
								<div class="field_container" align="right">
									<input type="text" name="firstName" pattern="[A-Za-z ]{1,16}"
										title="Please enter valid name with length 1 to 16 characters"
										style="width: 150px; border: 1px" required />
								</div>
								<br /> <label>Last Name</label>
								<div class="field_container" align="left">

									<input type="text" name="lastName" pattern="[A-Za-z ]{1,16}"
										title="Please enter valid name with length 1 to 16 characters"
										style="width: 150px; border: 1px" required />
								</div>
								<span style="padding: 0 40px">&nbsp;</span> <label>Middle Name</label>
								<div class="field_container" align="right">

									<input type="text" name="middleName" pattern="[A-Za-z ]{16}"
										title="Please enter valid name with length 1 to 16 characters"
										style="width: 150px; border: 1px" />
								</div>
								<br /> <label>Mobile</label>
								<div class="field_container" align="left">

									<input type="text" name="mobile" pattern="[1-9]{1}[0-9]{9}"
										title="Please enter valid 10-digit mobile number"
										style="width: 150px; border: 1px"/>
								</div>
								<span style="padding: 0 40px">&nbsp;</span> <label>E-Mail</label>
								<div class="field_container" align="right">

									<input type="text" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"
										title="Please enter valid email id"
										style="width: 150px; border: 1px" />
								</div>
								<br /> <label>Address Line1</label>
								<div class="field_container" align="left">

									<input type="text" name="address1" pattern="[0-9A-Za-z ]{1,32}"
										title="Please enter valid Address"
										style="width: 150px; border: 1px"/>
								</div>
								<span style="padding: 0 40px">&nbsp;</span> <label>Address Line2</label>
								<div class="field_container" align="right">
									<input type="text" name="address2" style="width: 150px; border: 1px" />
								</div>
								<br /> <label>City</label>
								<div class="field_container" align="left">
									<input type="text" name="city" style="width: 150px; border: 1px" />
								</div>
								<span style="padding: 0 40px">&nbsp;</span> <label>State</label>
								<div class="field_container" align="right">
									<input type="text" name="state" style="width: 150px; border: 1px" />
								</div>
								<br /> <label>Country</label>
								<div class="field_container" align="left">
									<input type="text" name="country" style="width: 150px; border: 1px" />
								</div>
								<span style="padding: 0 40px">&nbsp;</span> <label>Zip Code</label>
								<div class="field_container" align="right">
									<input type="text" name="zipcode" style="width: 150px; border: 1px" />
								</div>
								<br /> <br />
								<div align="right">
									<input type="submit" value="Add Member"/>
									<!-- <button type="submit" formaction="/member" formmethod="post">
										<span class="button_text">Add Member</span>
									</button> -->									
								</div>

							</div>
							<div id="tab-sheet-2" style="display: none;" class="tf_sheet">

								<table id="etable" cellspacing="0">
									<thead>
										<tr class="head">
											<th>Env No.</th>
											<th>Name</th>
											<!-- <th>Last Name</th>
											<th>Middle Name</th> -->
											<th>Address1</th>
											<th>Address2</th>
											<th>city</th>
											<th>state</th>
											<th>country</th>
											<th>Zipcode</th>
											<th>Mobile</th>
											<!-- <th>Email</th> -->
											<!-- <th></th> -->
											<th></th>
										</tr>
									</thead>
									<tbody>
										<%
											for(Member member : memberList){
										%>
										<tr>
											<td contenteditable="true"><%=member.getEnvelopeNo()%></td>
											<%String name = member.getFirstName() + " " + member.getMiddleName() + " " + member.getLastName();%>
											<td contenteditable="true"><%=name %></td>
											<!-- <td contenteditable="true">undefined</td>
											<td contenteditable="true">undefined</td> -->
											<td contenteditable="true"><%=member.getAddress1()%></td>
											<td contenteditable="true"><%=member.getAddress2()%></td>
											<td contenteditable="true"><%=member.getCity()%></td>
											<td contenteditable="true"><%=member.getState()%></td>
											<td contenteditable="true"><%=member.getCountry()%></td>
											<td contenteditable="true"><%=member.getZipcode()%></td>
											<td contenteditable="true"><%=member.getMobile()%></td>
											<!-- <td contenteditable="true">undefined</td> -->
											<td>
												<input type="button" value="Update">
												<input type="button" value="Delete">
											</td>
										</tr>
										<%
											}
										%>										
									</tbody>
								</table>
							</div>
						</td>
					</tr>
					<tr>
						<td style="height: 0.5mm;">&#160;</td>
					</tr>
					<tr>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
	<div>
			<p align="center">&copy; Mission Impossible IV 2016</p>
		</div>
</body>
</html>
