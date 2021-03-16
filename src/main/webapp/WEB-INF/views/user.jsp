<%@ page import="java.util.List" %>
<%@ page import="com.usermanager.demo.entities.User" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
  User user= (User) request.getAttribute("user");
  String userId = user.getId().toString();
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>View User Details</title>
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
      <div class="card-header">User Details</div>
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
       <form name="updateUser" action="/update" method="POST" novalidate>
         <input type="hidden" id="userId" name="userId" value="<% out.print(userId); %>" />
         <div class="mb-1">
           <label for="username" class="form-label">Username</label><br />
           <input type="text" class="form-control-sm" name="username" id="username" placeholder="Username">
         </div>
         <div class="mb-1">
           <label for="email" class="form-label">Email</label><br />
           <input type="email" class="form-control-sm" name="email" id=email placeholder="Email">
         </div>
<%--         <div class="mb-1">--%>
<%--           <label for="password" class="form-label">Password</label><br />--%>
<%--           <input type="text" class="form-control-sm" name="password" id="password" placeholder="Password">--%>
<%--         </div>--%>
<%--         <div class="mb-3">--%>
<%--           <label for="password-confirm" class="form-label">Confirm password</label><br />--%>
<%--           <input type="text" class="form-control-sm" name="password-confirm" id="password-confirm" placeholder="Password confirmation">--%>
<%--         </div>--%>
        <button type="submit" class="btn btn-sm btn-secondary">Update</button>
       </form>
      </div>
    </div>
  </div>
</main>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>/
</body>
</html>
