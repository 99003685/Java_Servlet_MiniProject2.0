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
<h1>PLAYERS TABLE</h1>
<%
PlayerDao pd=new PlayerDao();
List<Player> li=pd.getAllPlayers();
%>
<table style="width:100%">
<tr>
<th>Player Id</th>
<th>Team ID</th>
<th>Name</th>
<th>DOB</th>
<th>Email</th>
<th>Matches</th>
<th>Runs</th>
<th>Wickets</th>
<th>Achievements</th>
<th></th>
</tr>
<%
for(Player p:li){
%>
<tr>
<td><%= p.getPlayerid() %></td>
<td><%= p.getTeamid() %></td>
<td><%= p.getName() %></td>
<td><%= p.getDOB() %></td>
<td><%= p.getEmail() %></td>
<td><%= p.getMatches() %></td>
<td><%= p.getRuns() %></td>
<td><%= p.getWickets() %></td>
<td><%= p.getAchievements() %></td>
<td><a href="editplayer.jsp?id=<%=p.getPlayerid()%>"><button class="button">UPDATE</button></a></td>
</tr>
<%} %>
</table>

</body>
</html>