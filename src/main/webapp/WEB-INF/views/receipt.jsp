<%@ page import="java.util.List" %>
<%@ page import="com.usermanager.demo.entities.User" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<%
  User user= (User) request.getAttribute("updatedUser");
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>User Updated</title>
  <style>
      td {
          text-align: left;
      }
      .form-label {
          font-size: small;
      }
  </style>
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
      <div class="card-header">Updated User Details</div>
      <div>
        <table class="table table-sm table-striped vertical-align-top">
          <tr>
            <th scope="row" class="text-end">
              User ID:
            </th>
            <td>
              <% out.print(user.getId()); %>
            </td>
          </tr>
          <tr>
            <th scope="row" class="text-end">
              Name:
            </th>
            <td>
              <% out.print(user.getUsername()); %>
            </td>
          </tr>
          <tr>
            <th scope="row" class="text-end">
              Email:
            </th>
            <td>
              <% out.print(user.getEmail()); %>
            </td>
          </tr>
          <tr>
            <th scope="row" class="text-end">
              Password:
            </th>
            <td>
              <% out.print(user.getPassword()); %>
            </td>
          </tr>
        </table>
      </div>
      <div>
        <form name="returnHome" action="/" method="GET">
          <button type="submit" class="btn btn-sm btn-secondary">Return Home</button>
        </form>
      </div>
    </div>
  </div>
</main>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>/
</body>
</html>
