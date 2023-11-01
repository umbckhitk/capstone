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
<title>Apply</title>
</head>
<body>

<div class="page-header" class="container">
<h1 align="center">Apply for the Job</h1>


</div> 
<div class="container">
<h3> <a href="/job">${error}</a> </h3>
</div>

<div class="container">
<sf:form action="/applypost" method="post" modelAttribute="apply"   >
    <div class="form-row">
    <div class="form-group col-md-6">

      <label for="id">Candidate ID</label>

      <sf:input type="number" class="form-control" path="id" id="id" value="${registers.id}" required="required" readonly="true" />
    </div>
    <div class="form-group col-md-6">
      <label for="hrname">HR ID</label>
      <sf:input type="number" class="form-control" path="reid" id="hrname"   required="required" value="${reid}" readonly="true" />
    </div>
  </div>
          <div class="form-row">
  
    <div class="form-group col-md-6">
      <label for="domain">Candidate Name</label>
      <sf:input type="text" class="form-control"  path="name"  id="domain" value="${registers.firstname} ${registers.lastname}" readonly="true"/>
    </div>
    <div class="form-group col-md-6">
      <label for="number">Contact Information</label>
      <sf:input type="text" class="form-control"  path="number" id="number"  value="${registers.num} " readonly="true"/>
      
      </div>
      
    </div>
    
    <div align="center" class="container ">
      <button type="submit"   class="btn btn-primary">Submit</button>
      </div>
    
</sf:form>
</div>
</body>
</html>