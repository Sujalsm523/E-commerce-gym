<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <div class="admin-message">Hello Admin</div>
    </div>

    <div class="row mt-5">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h4>All Members Details</h4>
                    <c:if test="${not empty msg }">
                        <h5 class="success-message">${msg}</h5>
                        <c:remove var="msg"/>
                    </c:if>
                </div>

                <div class="card-body">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th scope="col">Id</th>
                                <th scope="col">Full Name</th>
                                <th scope="col">Address</th>
                                <th scope="col">Email</th>
                                <th scope="col">Password</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${empList}" var="emp">
                                <tr>
                                    <th scope="row">${emp.id}</th>
                                    <td>${emp.fullname}</td>
                                    <td>${emp.address}</td>
                                    <td>${emp.email}</td>
                                    <td>${emp.password}</td>
                                    <td>
                                        <a href="editEmp/${emp.id}" class="btn btn-sm btn-primary">Edit</a>
                                        <a href="deleteEmp/${emp.id}" class="btn btn-sm btn-danger">Delete</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>