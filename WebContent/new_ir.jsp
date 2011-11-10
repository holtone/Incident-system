<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Submit New Incident</title>
</head>
<body>
<div id="newIR" style="font-family: serif; font-size: 12px;">
	<form action="/Incidents/NewIRServlet" method="post">
		<h1>Submitting New Incident</h1>
		Summary: <br /><textarea rows="20" cols="50" name="summary"></textarea><br />
		Date/time: <br /><input type="text" name="datetime" value="yyyy-mm-dd hh:mm" /><br />
		Parties: <br /><textarea name="parties" rows="10" cols="50"></textarea><br />
		<input type="submit" value="Submit Report" />
	</form>
</div>
</body>
</html>