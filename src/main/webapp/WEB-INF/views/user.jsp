<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>View User Details</title>
  <script>
    function validatePassword() {
      const span = document.getElementById("valid");
      const password = document.forms["updateUser"]["newPassword"];
      const confirmPassword = document.forms["updateUser"]["password-confirm"];

      if (password.value === confirmPassword.value) {
        return true;
      } else {
        span.innerHTML = "Passwords do not match!"
        return false;
      }
    }
  </script>
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
  <a href="/" class="navbar-brand">User Manager</a>
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
                User ID:</th>
              <td>${queryId}</td>
            </tr>
            <tr>
              <th scope="row" class="text-end">
                Name:</th>
              <td>${username}</td>
            </tr>
            <tr>
              <th scope="row" class="text-end">
                Email:
              </th>
              <td>${email}</td>
            </tr>
            <tr>
              <th scope="row" class="text-end">
                Password:
              </th>
              <td>${password}</td>
            </tr>
          </table>
        </div>
      <div>

       <form name="updateUser" action="/update" method="POST" onsubmit="return validatePassword()">
         <input type="hidden" id="queryId" name="queryId" value="${queryId}">
         <div class="mb-1">
           <label for="newUsername" class="form-label">Username</label><br />
           <input type="text" class="form-control-sm" name="newUsername" id="newUsername" placeholder="Username">
         </div>
         <div class="mb-1">
           <label for="newEmail" class="form-label">Email</label><br />
           <input type="email" class="form-control-sm" name="newEmail" id="newEmail" placeholder="Email">
         </div>
         <div class="mb-1">
           <label for="newPassword" class="form-label">Password</label><br />
           <input type="text" class="form-control-sm" name="newPassword" id="newPassword" placeholder="Password">
         </div>
         <div class="mb-3">
           <label for="password-confirm" class="form-label">Confirm password</label><br />
           <input type="text" class="form-control-sm" name="password-confirm" id="password-confirm" placeholder="Password confirmation"><br /><br />
           <strong><span id="valid" style="color: red;"></span></strong>
         </div>
        <button type="submit" class="btn btn-sm btn-secondary">Update</button>
       </form>
      </div>
    </div>
  </div>
</main>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>/
</body>
</html>
