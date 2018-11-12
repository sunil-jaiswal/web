<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<script src="<c:url value="/resources/jslibrary/jquery-3.3.1.min.js" />"></script>
	<link href="<c:url value="/resources/csslibrary/bootstrap.min.css" />" rel="stylesheet">
	<script src="<c:url value="/resources/jslibrary/bootstrap.min.js" />"></script>
	<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/css/login.css" />" rel="stylesheet">
	<script src="<c:url value="/resources/js/common.js" />"></script>
	<script src="<c:url value="/resources/js/login.js" />"></script>
    <%-- <script src="<c:url value="/resources/js/jquery.1.10.2.min.js" />"></script>
    <script src="<c:url value="/resources/js/main.js" />"></script> --%>
</head>
<body>
<div class="page-header">
	
	<nav class="navbar navbar-light justify-content-between">
	  <a class="navbar-brand">Navbar</a>
	  <div class="login-form-div">
		  <form class="form-inline">
		    <input class="form-control mr-sm-2" type="text" name="userName" data-custom-input="input" placeholder="Email" aria-label="Search">
		    <input class="form-control mr-sm-2" type="password" name="password" data-custom-input="input" placeholder="Password" aria-label="Search">
		    <button class="btn btn-outline-success my-2 my-sm-0 login-btn-evnt" type="button">Login</button>
		  </form>
	  </div>
	</nav> 

</div>
	<div class="login-form sign-up-form">
	    <form class="add-box-shadow" action="/examples/actions/confirmation.php" method="post">
	        <h3 class="text-center">Sign up</h3>   
	        <div class="form-group">
	        	 <label for="exampleInputEmail1">First name</label>
	             <input type="text" class="form-control" name="firstName" data-custom-input="input" placeholder="First name" required="required">				
	        </div>
			<div class="form-group">
	                <label for="exampleInputEmail1">Last name</label>
	                <input type="text" class="form-control" name="lastName" data-custom-input="input" placeholder="Last name" required="required">				
	        </div>
	        <div class="form-group">
	                <label for="exampleInputEmail1">Email</label>
	                <input type="text" class="form-control" name="email" data-custom-input="input" placeholder="Email" required="required">				
	        </div>
	        <div class="form-group">
	                <label for="exampleInputEmail1">Phone</label>
	                <input type="text" class="form-control" name="phone" data-custom-input="input" placeholder="Phone" required="required">				
	        </div>
	        <div class="form-group">
	                <label for="exampleInputEmail1">Password</label>
	                <input type="password" class="form-control" name="password" data-custom-input="input" placeholder="Password" required="required">				
	        </div>        
	        <div class="form-group">
			    <label for="exampleFormControlSelect1">Role</label>
			    <select class="form-control" id="exampleFormControlSelect1" name="roleId" data-custom-input="select">
			      <option value="1">Student</option>
			      <option value="2">Moderator</option>
			    </select>
		  </div>
	        
	        <div class="form-group">
	            <button type="button" class="btn btn-primary login-btn btn-block" id="join_me_evt">Join now</button>
	        </div>
	        
	        <div class="clearfix">
	            <label class="pull-left checkbox-inline"><input type="checkbox"> Remember me</label>
	            <a href="#" class="pull-right">Forgot Password?</a>
	        </div>
			<div class="or-seperator"><i>or</i></div>
	        <p class="text-center">Login with your social media account</p>
	        <div class="text-center social-btn">
	            <a href="#" class="btn btn-primary"><i class="fa fa-facebook"></i>&nbsp; Facebook</a>
	            <a href="#" class="btn btn-info"><i class="fa fa-twitter"></i>&nbsp; Twitter</a>
				<a href="#" class="btn btn-danger"><i class="fa fa-google"></i>&nbsp; Google</a>
	        </div>
	    </form>
	    <!-- <p class="text-center text-muted small">Don't have an account? <a href="#">Sign up here!</a></p> -->
	    <!-- http://jaybabani.com/complete-admin/v6.1/preview/fullmenu/index.html# 
	    	https://getbootstrap.com/docs/4.0/components/forms/
	    -->
	</div>
</body>
</html>