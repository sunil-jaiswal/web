
<div class="page-header">
	<nav class="navbar navbar-light justify-content-between">
	  <a class="navbar-brand"><!-- Navbar --></a>
	  <div class="login-form-div">
		  <form class="form-inline" action="authenticate" method="post" ng-submit="login(user)">
		    <input class="form-control mr-sm-2" type="text" autocomplete="off" ng-model="user.userName" name="userName" data-custom-input="input" placeholder="Email" aria-label="Search">
		    <input class="form-control mr-sm-2" type="password" ng-model="user.password" name="password" data-custom-input="input" placeholder="Password" aria-label="Search">
		    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Login</button>
		    	<span class="error" style="display:inline;">
		       		<c:if test="${loginStatusCode != null}">
		       			<fmt:message key='${loginStatusCode}'/>
		       		</c:if>
		       	</span>
		  </form>
	  </div>
	  
	</nav> 

</div>