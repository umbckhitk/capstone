<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="common/header.jspf"%>
     <%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Requirement</title>
</head>
<body>
<nav role="navigation" class="navbar navbar-default">

	<div class="">
		<a  href="/about" class="navbar-brand">Interview scheduler</a>
	</div>

	<div class="navbar-collapse">
		<ul class="nav navbar-nav">
			<li ><a href="/hrfront?id=${registers.id}">Home</a></li>
			<li class="active"><a href="/requirement">Create Requirement</a></li>
			<li><a href="/listrequirement?id=${registers.id}">List Requirement</a></li>
			
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="/">Logout</a></li>
		</ul>
	</div>
</nav>    

<div class="page-header" class="container">
<h1 align="center">Create Job Requirement</h1>


</div>

<h2 style="color:#73e600">${sucessfully}</h2><br><br>


<form action="/requirementpost" method="post" modelAttribute="requirement">
<div class="container " class="text-secondary" class="bg-light text-black-50">
  <div class="form-row">
    <div class="form-group col-md-6">

      <label for="id">HR ID</label>

      <sf:input type="text" class="form-control" path="requirement.id" id="id" value="${registers.id}" required="required" readonly="true" />
    </div>
    <div class="form-group col-md-6">
      <label for="hrname">HR Name</label>
      <sf:input type="text" class="form-control" path="requirement.name" id="hrname"  value="${registers.firstname} ${registers.lastname}" required="required" readonly="true" />
    </div>
  </div>
    <div class="form-group col-md-6">
      <label for="domain">Domain</label>
      <sf:input type="text" class="form-control" required="required" path="requirement.domain"  id="domain" placeholder="Developer"/>
<sf:errors class="errors"  path="requirement.domain"></sf:errors><br>   
    </div>
  
  <div>
  <div class="form-group  col-md-6">
    <label for="vacancy">Required Vacancies</label>
    <sf:input type="number" class="form-control" required="required" path="requirement.vacancy"  id="vacancy" placeholder="No of Vacancies" value="null"  min="1" />
  <sf:errors class="errors"  path="requirement.vacancy"></sf:errors><br>   
  
  </div>
  <div class="form-group col-md-6">
    <label for="closingdate">Closing Date</label>
    <sf:input type="date" class="form-control" required="required" path="requirement.date" min="2020-05-12" id="closingdate" placeholder="Enter The last date"/>
  <sf:errors class="errors"  path="requirement.date"></sf:errors><br>   
  
  </div>
  <div class="form-row">
    <div class="form-group col-md-4">
      <label for="priority">Priority</label>
     <!--<sf:input type="text" class="form-control" path="requirement.priority" required="required" id="priority"/> --->
    
<sf:select class="form-control" path="requirement.priority" id="priority">
  <sf:option value="High">High</sf:option>
  <sf:option value="Medium">Medium</sf:option>
  <sf:option value="Low">Low</sf:option>
</sf:select>
    
    </div>
    
    <div class="form-group col-md-2">
      <label for="exp">Minimum Experience</label>
      <sf:input type="number"  path="requirement.ex" class="form-control" id="exp" value="null" required="required"/>
    <sf:errors class="errors"  path="requirement.ex"></sf:errors><br>   
    
    </div> <center> <button type="submit"   class="btn btn-primary" onclick="alert("Hello! I am an alert box!!");
" >Submit</button></center>
    
  </div>
  </div>
    </div>
</form>

</body>
</html>