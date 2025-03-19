<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Member</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Gym Management System</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        
        <li class="nav-item">
          <a class="nav-link" href="addEmp">Add Member</a>
        </li>
      </ul>
    </div>
  </div>
</nav>

<div class="container">
  <div class="row">
    <div class="col-md-6 offset-md-3">
      <div class="card">
        <div class="card-header text-center"> 
          <h2>Edit Member</h2>
          <c:if test="${not empty msg }">
          
          <h5> ${msg} </h5>
          <c:remove var="msg"/>
          
          </c:if>
        </div>
        <div class="card-body">
          <form action="${pageContext.request.contextPath}/updateEmp"  method="post">
            <input type="hidden" name="id" value="${emp.id}">
            <div class="mb-3">
              <label for="fullname">Enter Full Name</label>
              <input type="text" id="fullname" name="fullname" class="form-control" value="${emp.fullname }">
            </div>
            <div class="mb-3">
              <label for="address">Enter Address</label>
              <input type="text" id="address" name="address" class="form-control" value="${emp.address }">
            </div>
            <div class="mb-3">
              <label for="email">Enter Email</label>
              <input type="text" id="email" name="email" class="form-control" value="${emp.email }">
            </div>
            <div class="mb-3">
              <label for="password">Enter Password</label>
              <input type="password" id="password" name="password" class="form-control" value="${emp.password }">
            </div>
           
            <button type ="submit" class="btn btn-primary">Update</button>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- Include Bootstrap JS and Popper.js -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" crossorigin="anonymous"></script>

</body>
</html>
