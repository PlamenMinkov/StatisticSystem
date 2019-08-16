<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<jsp:include page="tags/header.jsp" flush="true"></jsp:include>
<body>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
      <script type="text/javascript" src="<c:url value="/resources/getrequest.js"/>"></script>
      <script type="text/javascript" src="<c:url value="/resources/postrequest.js"/>"></script>
<div class="container">
 
  <h3 style="color:blue">POST-GET AJAX Example</h3>
  
  <div>
    <form class="form-inline" style="margin:20px 20px 20px 20px" id="customerForm">
      <div class="form-group">
        <label for="firstname" style="margin-right:5px">FirstName:</label>
        <input type="text" class="form-control" id="firstname" placeholder="Enter FirstName"/>
      </div>
      <div class="form-group">
        <label for="lastname" style="margin-left:20px; margin-right:5px">LastName:</label>
        <input type="text" class="form-control" id="lastname" placeholder="Enter LastName"/>
      </div>
      <button type="submit" class="btn btn-default" style="margin-left:20px; margin-right:5px">Submit</button>
    </form>
  </div>
  
  <div class="col-sm-7" id="postResultDiv">
  </div>
  
  <div class="col-sm-7" style="margin:20px 0px 20px 0px">
    <button id="getAllCustomerId" type="button" class="btn btn-primary">Get All Customers</button>
    <div id="getResultDiv" style="padding:20px 10px 20px 50px">
          <ul class="list-group">
        </ul>
      </div>
  </div>
  
</div>
</body>
</html>