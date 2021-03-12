<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import ="java.util.*,com.ltts.ServletProject.model.*,com.ltts.ServletProject.Dao.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
table, th, td {
  border: 1px solid black;
}
h1 {text-align: center;}
.button {background-color: #f44336;}
</style>
</head>
<body style="background-color:powderblue;">
<h1>TEAMS TABLE</h1>
<%
TeamDao td=new TeamDao();
List<Team> li=td.getAllTeams();
%>
<table style="width:100%">
<tr>
<th>Teamid</th>
<th>Teamname</th>
<th>Teamowner</th>

<th></th>
</tr>
<%
for(Team t:li){
%>
<tr>
<td><%= t.getTeamid() %></td>
<td><%= t.getTeamname() %></td>
<td><%= t.getTeamowner() %></td>

<td><a href="editteam.jsp?id=<%=t.getTeamid()%>"><button class="button">UPDATE</button></a></td>
</tr>
<%} %>
</table>

</body>
</html>