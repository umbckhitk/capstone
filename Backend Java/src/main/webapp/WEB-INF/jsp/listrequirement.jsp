<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ include file="common/header.jspf"%>
    
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<nav role="navigation" class="navbar navbar-default">

	<div class="">
		<a  href="/about" class="navbar-brand">Interview scheduler</a>
	</div>

	<div class="navbar-collapse">
		<ul class="nav navbar-nav">
			<li ><a href="/hrfront?id=${registers.id}"  >Home</a></li>
			<li><a href="/requirement">Create Requirement</a></li>
			<li class="active" ><a href="/listrequirement?id=${registers.id}">List Requirement</a></li>
			
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="/">Logout</a></li>
		</ul>
	</div>
</nav>    

<div class="container">
	<table class="table table-striped">
		<caption>Your requirements you posted are here HR</caption>
		<thead>
			<tr>
				<th>Requirement Id </th>
				<th>HR Id </th>
				<th>Name</th>
				<th>Domain</th>
				<th>Required Vacancies</th>
				<th>Closing Date</th>
				<th>Priority</th>
				<th>Minimum Experience</th>
				<th>Mode of Selection</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${requirementlist}" var="requirementBean">
				<tr>
					<td>${requirementBean.reid}</td>
					<td>${requirementBean.id}</td>
					<td>${requirementBean.name}</td>
					<td>${requirementBean.domain}</td>
					<td>${requirementBean.vacancy}</td>
					<td>${requirementBean.date}</td>
					<td>${requirementBean.priority}</td>
					<td>${requirementBean.ex}</td>
					<td>${requirementBean.mode}</td>
					<td><a type="button" class="btn btn-primary"
						href="/view?reid=${requirementBean.reid}">View</a> <a type="button"
		></a>	</tr>
			</c:forEach>
		</tbody>
	</table>
	<div>
	</div>
</div>
</body>
</html>