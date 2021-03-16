<%--
  Created by IntelliJ IDEA.
  User: mjtillman
  Date: 3/11/21
  Time: 11:44
To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%
  String message = (String)request.getAttribute("message");
  String userIds = (String)request.getAttribute("userIds");
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>User Manager</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
<%--  <script>--%>
<%--    function validateIdQuery() {--%>
<%--      const userIdData = document.forms["idSearch"]["userIds"];--%>
<%--      const userIds = userIdData.value;--%>
<%--      const queryId = document.forms["idSearch"]["queryId"];--%>
<%--      for (let id in userIds) {--%>
<%--        if (id === queryId.value) {--%>
<%--          return true;--%>
<%--        }--%>
<%--      }--%>
<%--      return false;--%>
<%--    }--%>
<%--  </script>--%>
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
      <form name="idSearch" action="/idSearch" method="POST">
<%--        <input type="hidden" id="userIds" value=<% out.print(userIds); %> />--%>
        <div class="form-floating mb-3">
          <input type="text" class="form-control" id="queryId" name="queryId" placeholder="User ID" required>
          <label for="queryId">User ID</label>
        </div>
        <button type="submit" class="btn btn-secondary">Search</button>
      </form>
    </div>
  </div>
</main>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
</body>
</html>
