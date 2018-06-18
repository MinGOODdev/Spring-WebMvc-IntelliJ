<%--
  Created by IntelliJ IDEA.
  User: MinGOOD
  Date: 2018-06-18
  Time: 오후 2:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
    <title>edit</title>
    <style>
        label { margin-top: 20px; }
    </style>
</head>
<body>

<div class="container">
    <h1>사용자 정보 수정</h1>

    <form method="post">
        <div class="form-group">
            <label for="id">ID</label>
            <input type="text" class="form-control" id="id" value="${ user.id }" />
        </div>

        <div class="form-group">
            <label for="loginId">로그인 ID</label>
            <input type="text" class="form-control" id="loginId" value="${ user.loginId }" />
        </div>

        <div class="form-group">
            <label for="name">이름</label>
            <input type="text" class="form-control" id="name" value="${ user.name }" />
        </div>

        <div class="form-group">
            <label for="email">이메일</label>
            <input type="email" class="form-control" id="email" value="${ user.email }" />
        </div>

        <div class="form-group">
            <label for="userType">사용자 유형</label>
            <input type="text" class="form-control" id="userType" value="${ user.userType }" />
        </div>

        <div class="form-group">
            <label for="departmentId">학과</label>
            <input type="text" class="form-control" id="departmentId" value="${ user.departmentId }" />
        </div>

        <button type="submit" class="btn btn-primary">Save</button>
    </form>

    <div class="alert alert-danger" role="alert">${ error }</div>
    <div class="alert alert-success" role="alert">${ success }</div>
</div>

</body>
</html>
