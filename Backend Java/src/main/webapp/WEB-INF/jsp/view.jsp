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
<title>Views</title>
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

<div class="page-header" class="container">
<h1 align="center">Participants List</h1>


</div> 


<div class=container>
			<c:forEach items="${apply}" var="applyBean">

<ul class="list-group ">

  <li class="list-group-item"> ${applyBean.id}  ${applyBean.name} ${applyBean.number}
  <a type="button" class="btn btn-primary"
						href="/viewpost?id=${applyBean.id}">Remove</a> <a type="button"
		></a>
  
  
  </li>

</ul>
			</c:forEach>

</div>



</body>
</html>