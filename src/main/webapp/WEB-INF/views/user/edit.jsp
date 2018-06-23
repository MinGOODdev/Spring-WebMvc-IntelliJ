<%--
  Created by IntelliJ IDEA.
  User: MinGOOD
  Date: 2018-06-19
  Time: 오후 5:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"
          integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
    <title>WebMvc</title>
    <style>
        label { margin-top: 20px; }
    </style>
</head>
<body>
<div class="container">
    <h1>사용자 정보 수정</h1>

    <form:form method="post" modelAttribute="user" cssClass="form-group">
        <label>로그인 ID</label>
        <form:input path="loginId" cssClass="form-control"/>

        <label>이름</label>
        <form:input path="name" cssClass="form-control"/>

        <label>이메일</label>
        <form:input path="email" cssClass="form-control"/>

        <label>사용자 유형</label>
        <form:select path="userType">
            <form:option value="관리자"/>
            <form:option value="교수"/>
            <form:option value="학생"/>
        </form:select>

        <label>학과</label>
        <form:select path="departmentId">
            <form:options itemValue="id" itemLabel="departmentName" items="${ departments }"/>
            <%--<form:option value="1" label="소프트웨어공학과"/>--%>
            <%--<form:option value="2" label="컴퓨터공학과"/>--%>
            <%--<form:option value="3" label="정보통신공학과"/>--%>
            <%--<form:option value="4" label="글로컬IT학과"/>--%>
        </form:select>

        <hr/>
        <div>
            <button class="btn btn-primary" type="submit">Save</button>
            <a href="list" class="btn btn-default">목록으로</a>
        </div>
    </form:form>

    <c:if test="${not empty error}">
        <div class="alert alert-danger" role="alert">${error}</div>
    </c:if>

    <c:if test="${not empty success}">
        <div class="alert alert-success" role="alert">${success}</div>
    </c:if>
</div>
</body>
</html>