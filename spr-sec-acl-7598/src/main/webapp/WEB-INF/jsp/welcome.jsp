<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Test: hello</title>
</head>
<body>
	<h1>Hello, world</h1>

	<h1>visible for user and admin</h1>

	        <sec:authorize access="hasRole('admin')">
                <p>admin mew</p>
            </sec:authorize>

	<h1>visible for admin but not user</h1>


 <sec:authorize access="hasRole('admin')">
            <p>admin mew</p>
        </sec:authorize>
        <sec:authorize access="hasRole('user')">
            <p>user mew</p>
        </sec:authorize>


</body>
</html>