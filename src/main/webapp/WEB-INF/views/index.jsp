<%--
  Created by IntelliJ IDEA.
  User: mjtillman
  Date: 3/11/21
  Time: 11:44
To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<%
  String message = (String)request.getAttribute("message");
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>User Manager</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
</head>
<body class="bg-dark">
<nav class="navbar navbar-dark container-fluid" style="background-color: #000000;" >
  <a href="index.jsp" class="navbar-brand">User Manager</a>
</nav>
<main>
  <div class="card text-center mx-auto mt-3" style="width: 18rem;
    background-color: #e9ecef;">
    <div class="card-body">
      <div class="card-header">
        <h5 class="card-title">User Manager</h5>
      </div>
      <form name="idSearch" action="/idSearch" method="POST" novalidate>
        <div class="form-floating mb-3">
          <input type="text" class="form-control" id="userId" name="userId" placeholder="User ID" required>
          <label for="userId">User ID</label>
        </div>
        <button type="submit" class="btn btn-secondary">Search</button>
      </form>
    </div>
  </div>
</main>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>/
</body>
</html>
