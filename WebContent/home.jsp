<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

 
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<html>
	<head>
		<title>Conduct System - JA Interface</title>
		<style type="text/css">
			.tr1 {
				background-color: #CCCCCC;
				font-family: serif;
				font-size: 12px;
			}
			.tr2 {
				background-color: #999999;
				font-family: serif;
				font-size: 12px;
			}
			.tr_header
			{
				background-color: #FFFFCC;
				font-family: serif;
				font-size: 15px;
				font-weight: bold;
			}
		</style>
	</head>
	<body style="background-color: #CCCC99;">
			<h2 style="font-family: serif;">Conduct System - JA Interface</h1>
			
			<h3>Future Meetings</h3>
			<table cellspacing="0" cellpadding="0" border="1" style="margin-left: 200px;">
				<tr class="tr_header"><td>Meeting Date/Time</td><td>Party</td><td colspan="2">&nbsp;</td><td>Cancel</td></tr>
				<tr class="tr1"><td>11/10/2011 1:00pm (30 minutes)</td><td>Anthony Pfaff</td><td><a href="#">IR</a></td><td><a href="#">Edit</a></td><td><input type="checkbox"></td></tr>
				<tr class="tr2"><td>11/10/2011 1:30pm (30 minutes)</td><td>Eric Holton</td><td><a href="#">IR</a></td><td><a href="#">Edit</a></td><td><input type="checkbox"></td></tr>
				<tr class="tr1"><td>11/10/2011 2:00pm (30 minutes)</td><td>Christopher Mar</td><td><a href="#">IR</a></td><td><a href="#">Edit</a></td><td><input type="checkbox"></td></tr>
				<tr class="tr2"><td>11/10/2011 2:30pm (30 minutes)</td><td>Justin Spurgeon</td><td><a href="#">IR</a></td><td><a href="#">Edit</a></td><td><input type="checkbox"></td></tr>
			</table>
			<h3>Pending IRs (need scheduling)</h3>
			<table cellspacing="0" cellpadding="0" border="1" style="margin-left: 200px;">
				<tr class="tr_header"><td>Incident Date/Time</td><td>Parties (click to schedule/edit)</td><td>IR</td></tr>

<%
try {
//Create string of connection url within specified format with machine
//name, port number and database name. Here machine name id localhost and 
//database name is conductCommittee. 
String connectionURL = "jdbc:mysql://127.0.0.1:3306/incident";
// declare a connection by using Connection interface
Connection connection = null;
// declare object of Statement interface that is used for executing sql statements. 
Statement statement = null;
// declare a resultset that uses as a table for output data from tha table.
ResultSet rs = null;
// Load JBBC driver "com.mysql.jdbc.Driver"
Class.forName("com.mysql.jdbc.Driver").newInstance();
//Create a connection by using getConnection() method that takes parameters 
//of string type connection url, user name and password to connect to database.
connection = DriverManager.getConnection(connectionURL, "incident", "smile");
//createStatement() is used for create statement object that is used for 
//sending sql statements to the specified database. */
statement = connection.createStatement();
// sql query to retrieve values from the secified table.
String QueryString = "SELECT * from incidentReports";
rs = statement.executeQuery(QueryString);

int i = 0;
while(rs.next())
{
%>
				<tr class="tr<% out.println(i++ % 2 == 1? 1: 2); %>">
					<td><% out.println(rs.getString(2)); %> </td>
					<td><% out.println(rs.getString(3)); %> <a href="#">(currently scheduled)</a></td>
					<td><a href="#">IR</a></td><td></td>
				</tr>	
<%
}
// close all the connections.
rs.close();
statement.close();
connection.close();
} catch (SQLException ex) {
out.println("Unable to connect to database: " + ex.getMessage());
}
%>
			</table>			
		</table>
	</body>
</html>
