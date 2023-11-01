<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
<%@ include file="common/header.jspf"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>

.errors{color: red;}

ul {
  list-style-image: url('sqpurple.gif');
}

.button {
  background-color: #004A7F;
  -webkit-border-radius: 10px;
  border-radius: 10px;
  border: none;
  color: #FFFFFF;
  cursor: pointer;
  display: inline-block;
  font-family: Arial;
  font-size: 20px;
  padding: 5px 10px;
  text-align: center;
  text-decoration: none;
  -webkit-animation: glowing 1500ms infinite;
  -moz-animation: glowing 1500ms infinite;
  -o-animation: glowing 1500ms infinite;
  animation: glowing 1500ms infinite;
}
@-webkit-keyframes glowing {
  0% { background-color: #B20000; -webkit-box-shadow: 0 0 3px #B20000; }
  50% { background-color: #FF0000; -webkit-box-shadow: 0 0 40px #FF0000; }
  100% { background-color: #B20000; -webkit-box-shadow: 0 0 3px #B20000; }
}

@-moz-keyframes glowing {
  0% { background-color: #B20000; -moz-box-shadow: 0 0 3px #B20000; }
  50% { background-color: #FF0000; -moz-box-shadow: 0 0 40px #FF0000; }
  100% { background-color: #B20000; -moz-box-shadow: 0 0 3px #B20000; }
}

@-o-keyframes glowing {
  0% { background-color: #B20000; box-shadow: 0 0 3px #B20000; }
  50% { background-color: #FF0000; box-shadow: 0 0 40px #FF0000; }
  100% { background-color: #B20000; box-shadow: 0 0 3px #B20000; }
}

@keyframes glowing {
  0% { background-color: #B20000; box-shadow: 0 0 3px #B20000; }
  50% { background-color: #FF0000; box-shadow: 0 0 40px #FF0000; }
  100% { background-color: #B20000; box-shadow: 0 0 3px #B20000; }
}
</style>
</head>
<body >
<nav role="navigation" class="navbar navbar-default">

	<div class="">
		<a herf="/about" class="navbar-brand">Interview scheduler</a>
	</div>

	<div class="navbar-collapse">
		<ul class="nav navbar-nav">
			<li class="active"><a href="/">Home</a></li>
			<li><a href="/register">Registration</a></li>
		     <li><a href="/about">About</a></li>
			
		</ul>
		</div>
</nav>

<center>
<h1>Candidate/HR Login</h1>
</center>
<div class="container" >
<form class="container" action="/submitlogin" method="post">
<div class="form-group  ">

  <label class="form-check-label" for="userName">User ID:</label>

<sf:input class="form-control" path="login.userName" type="number" name="userName" required="required" value="null" placeholder="Enter your registerd User ID"/> <br>

  <label class="form-check-label" for="confirmpass">Password:</label>

<sf:input class="form-control" path="login.passwords" name="password" type="password"  required="required"  placeholder="Enter your registered Password"/>

<p class="errors">${errors}</p>

</div>

<br>
<div class="form-row">
<div class="form-group col-md-6">

<input  class="btn btn-success" type="submit" value="Login"  name="submit" />
<input   class="btn btn-danger" type="reset" value="cancel"  />
</div>
</div>
</form>

</div>


<c:forEach items="${requirementlist}" var="requirementBean">

		<div class="col-md-7 col-md-offset-3">

			<div class="form-group col-md-9">
                	<div class="row">
				<div class="panel panel-info">
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
		         <h4 align="center">Register  to Apply for this Post</h4>	
		         <h5 align="center">Login if you are already a User </h5>	
		          
		<div align="right">
		
			<a type="button" href="/register" class="button btn btn-primary">Apply Now</a> 
			
			</div>
					</div>
				</div>


			</div>
			

		</div>
	</div>


			</c:forEach>
<%@ include file="common/footer.jspf"%>
