var app = angular.module("mainPageApp", ['ngRoute']);


app.config(function($routeProvider) {
	alert('s')
    $routeProvider
    .when("/login", {
        controller:'studentDashCtrl'
    })
    .when("/red", {
        templateUrl : "red.htm"
    })
    .when("/green", {
        templateUrl : "green.htm"
    })
    .when("/blue", {
        templateUrl : "blue.htm"
    });
});

/*app.config(function($routeProvider){
	alert('s')
	$routeProvider.when('/studentdashboard', {
		templateUrl: '/studentDashboard.jsp',
		controller:'studentDashCtrl'
	})
	
});*/

	app.controller("loginCtrl", function($scope, $http) {
	    $scope.login = function (user) {
	    	var user1 = {
	    			'userName' : 'sunil',
	    			'password' : '123456'
	    	};
	    	$http({
	    	    method: 'POST',
	    	    url: 'authenticate',
	    	    data: JSON.stringify(user1),
	    	    headers: {'Content-Type': 'application/x-www-form-urlencoded'}
	    	}).then(function(response) {
	            console.log(response);
	        }, 
	        function(response) { // optional
	            // failed
	        });

	    	
	    }
	});
	
	
	app.controller("studentDashCtrl", function($scope) {
	   alert('hello there??');
	});