<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import ="java.util.*,com.ltts.ServletProject.model.*,com.ltts.ServletProject.Dao.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
table, th, td{
  border: 1px solid black;
}
h1 {text-align: center;}
.button {background-color: #f44336;}
</style>
</head>
<body style="background-color:powderblue;">
<h1>AUCTION TABLE</h1>
<%
AuctionDao ad=new AuctionDao();
List<Auction> li=ad.getAllAuctions();
%>
<table style="width:100%">
<tr>
<th>Auctionid</th>
<th>Playerid</th>
<th>Teamid</th>
<th>year</th>
<th>amount</th>

<th></th>
</tr>
<%
for(Auction a:li){
%>
<tr>
<td><%= a.getAuctionid() %></td>
<td><%= a.getPlayerid() %></td>
<td><%= a.getTeamid() %></td>
<td><%= a.getYear() %></td>
<td><%= a.getAmount() %></td>

<td><a href="editauction.jsp?id=<%=a.getAuctionid()%>"><button class="button">UPDATE</button></a></td>
</tr>
<%} %>
</table>

</body>
</html>