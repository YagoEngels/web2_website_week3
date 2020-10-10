<%@ page import="domain.database.DatabankenPlayers" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="domain.model.Player" %><%--
  Created by IntelliJ IDEA.
  User: PC001
  Date: 10-10-2020
  Time: 00:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="nl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css" type="text/css">
    <title>player database</title>
</head>
<body class="body">
<div class="bg"></div>
<header>
    <h1>DATABASE</h1>
</header>
<nav>
    <ul>
        <li><a href="index.html" >HOME</a></li>
        <li><a href="tweedePag.html">ADD PLAYER</a></li>
        <li><a href="/./src/" class="kleur">PLAYER LIST</a></li>
    </ul>
</nav>
<article>
    <h2> DATABASE WORLDS</h2>
    <table class="tabel">
        <thead>
        <th>naam</th>
        <th>nationaliteit</th>
        <th>team</th>
        </thead>
        <%!ArrayList<Player> spelers = new ArrayList<>();%>
        <%spelers =  (ArrayList<Player>)request.getAttribute("players");%>
        <%for (int i = 0; i < spelers.size(); i++){%>
            <tr>
                <td><p><%=spelers.get(i).getNaam()%></p></td>
                <td><p><%=spelers.get(i).getNationaliteit()%></p></td>
                <td><p><%=spelers.get(i).getTeam()%></p></td>
            </tr>
        <%}%>
    </table>
    <p>how many players from belgium = <%=request.getAttribute("spelers_belgie")%></p>
</article>
</body>
</html>