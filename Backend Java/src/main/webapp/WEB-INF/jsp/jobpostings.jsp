<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="common/header.jspf"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>candidate login</title>
</head>
<body>

<nav role="navigation" class="navbar navbar-default">

	<div class="">
		<a  href="/about" class="navbar-brand">Interview scheduler</a>
	</div>

	<div class="navbar-collapse">
		<ul class="nav navbar-nav">
			<li ><a href="/adminfront?id=${registers.id}">Home</a></li>
						<li class="active"><a href="/">Job Postings</a></li>
			
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="/">Logout</a></li>
		</ul>
	</div>

</nav>
<div class="container">
	<table class="table table-striped">
		<caption>All the Jobs are posted here ADMIN</caption>
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
				<th>Posted</th>
				<th>Delete</th>
				
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
						href="/jobs?reid=${requirementBean.reid}" method="post">Post it</a> <a type="button"
		></a></td>
		            <td> <a type="button" class="btn btn-danger"
						href="/jobsdelete?reid=${requirementBean.reid}" method="post">Del</a> <a type="button"
		></a>  </td>
			</tr>
			</c:forEach>
			<c:forEach items="${requirementlist1}" var="requirementBean">
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
					<td>Posted</td>
	<td> <a type="button" class="btn btn-danger"
						href="/jobsdelete?reid=${requirementBean.reid}" method="post" >Del</a> <a type="button"
		></a>  </td>
					</tr>
			</c:forEach>
		</tbody>
	</table>
	<div>
	</div>
</div>
    
    
    
    
    
    <script src="webjars/jquery/1.9.1/jquery.min.js"></script>
<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>

</html>