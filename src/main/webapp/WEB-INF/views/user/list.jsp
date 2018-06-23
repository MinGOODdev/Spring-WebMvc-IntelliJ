<%--
  Created by IntelliJ IDEA.
  User: MinGOOD
  Date: 2018-06-23
  Time: 오후 10:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"
          integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <title>List</title>
    <style>
        thead tr {
            background: #eee;
        }
        tbody tr:hover {
            background-color: #ffa;
            cursor: pointer;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>사용자 목록</h1>
    <hr/>
    <table class="table table-bordered">
        <thead>
        <tr>
            <th>id</th>
            <th>loginId</th>
            <th>name</th>
            <th>email</th>
            <th>userType</th>
            <th>department</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="user" items="${ list }">
            <tr data-url="edit?id=${ user.id }">
                <td>${ user.id }</td>
                <td>${ user.loginId }</td>
                <td>${ user.name }</td>
                <td>${ user.email }</td>
                <td>${ user.userType }</td>
                <td>${ user.departmentName }</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<script>
    $(function () {
        $("tbody tr").click(function () {
            location.href = $(this).attr("data-url");
        });
    });
</script>
</body>
</html>
