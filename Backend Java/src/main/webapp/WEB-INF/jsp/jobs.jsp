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
	<div>

		<nav class="navbar navbar-default">

			<div class="navbar-header">
				<a href="/about" class="navbar-brand">Interview scheduler</a>
			</div>

			<div class="navbar-collapse">
				<ul class="nav navbar-nav">
					<li><a href="/candidatefront?id=${registers.id}">Home</a></li>
					<li class="active"><a href="/job">Jobs for you </a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="/">Logout</a></li>
				</ul>
			</div>
		</nav>
	</div>
<div class="container">
<h3> <a href="/job" >${sucess}</a></h3>
</div>
<c:forEach items="${requirementlist}" var="requirementBean">

		<div class="col-md-7 col-md-offset-3">

			<div class="form-group col-md-9">
                	<div class="row">
				<div class="panel panel-default">
					<div class="panel-heading"> <h3>${requirementBean.domain}</h3>
					
					
					</div>
					<div class="panel-body">
					<ul>
			<li >Requirement Id     :    ${requirementBean.reid}</li>
			<li>HR Id               :    ${requirementBean.id}</li>
			<li>HR Name             :    ${requirementBean.name}</li>
			<li>Required Vacancies  :    ${requirementBean.vacancy}</li>
			<li>Closing Date        :    ${requirementBean.date}</li>
			<li>Priority            :    ${requirementBean.priority} </li>
			<li>Minimum Experience  :    ${requirementBean.ex} </li>
			<li>Mode of Selection   :    ${requirementBean.mode} </li>
						</ul>	
		
		<div align="right">
			<a type="button" href="/apply?reid=${requirementBean.reid}" class="btn btn-info">Apply</a>
			</div>
					</div>
				</div>


			</div>
			

		</div>
	</div>


			</c:forEach>



</body>
</html>