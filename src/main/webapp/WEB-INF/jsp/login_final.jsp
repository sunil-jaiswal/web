<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>

	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	 <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> --> 
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"> 
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	
	
	<style>
		body{
			padding: 0;
			margin:0;
		}
		.header{
			background-color: #2b3643;
			height:50px;
			width: 100%;
			position: fixed;
			z-index: 4;
		}
		
		.header .header-content{
			height : 100%;
			line-height: 50px;
			text-align: center;
		}
		.header-content .logo a{
			/* color:white; */
			text-decoration: none;
			font-size: 25px;
			font-weight: 3000;
			font-style: italic;
			
		}
		
		.header-content .logo{
			margin: 0 15px;
			width: 150px;
			display: inline-block;
    		float: left;
		}
		
		.header-content .logo .next, .header-content .logo .sidebar-toggler{
			color:#959fad;
		}
		
		.header-content .logo .steps{
			color:red;
		}
		.header-content .sidebar-toggler {
			font-size: 25px;
		}
		
		.sidebar-toggler {
			float: right;
		}
		
		.right-header{
			display: inline-block;
    		float: left;
		}
		
		.header-search a{
			width: 100%;
		    height: 100%;
		    display: block;
			color:#959fad;
		}
		
		.header-search a:hover{
			background-color: #2c3e50;
		}
		
		.search-div{
			width : 50px;
			height: 100%;
			background-color: #2d3436;
		}
		
		.right-notifications{
				margin: 0 15px;
			    display: inline-block;
    			float: right;
		}
		
		.right-notifications .nav ul{
			list-style: none;
			margin: 0;
    		padding: 0;
		}
		
		.right-notifications .nav li{
			display: inline-block;
		}
		
		.header-notification-li:hover{
			background-color: #2c3e50;
			
		}

		.right-notifications .nav li .notification-box a{
			margin: 0 15px;
			color:#959fad;
		}
		
		.right-notifications .nav ul li.user-box img{
			width: 30px;
			vertical-align: middle;
		}     
				
		.notification-box {
			position: relative;
		}
		
		.notification-box span{
			right: 20px;
    		position: absolute;
    		top: 9px;
    		background-color: #36c6d3;
		}
		
		.header-user-name{
			color:#959fad;
			text-decoration: none;
		}
		
		.user-box a{
			color:#959fad;
			text-decoration: none;
			/* margin-left: -15px; */
		}
		.left-sidebar{
			
			position:absolute;
			width: 180px;
			height: 1000px;
			background: #2c3e50;
			margin-top: 50px;
			float: left;
		
		}
		
		.not-drop h3, .message-drop h3{
			color: #62878f;
			font-size: 13px;
			margin: 0;
			padding: 0;
		
		}
		
		.custom-nav-dropdown{
			padding: 0;
			width: 275px;
			max-width: 275px;
			min-width: 160px;
			border: 1px solid #e7eaf0;
		
		}
		.bold{
		    font-weight: 700!important;
		}
		
		.not-drop, .message-drop{
			border: 1px solid #EFF2F6 !important;
		}
		.not-drop li, .message-drop li{
			display: block !important;
		}
		
		.noti-header, .message-header {
			padding: 15px;
			background-color: rgb(234, 237, 242);
		}
		
		body a:hover{
			text-decoration: none;
		}
		
		/* .noti-body{
			   	max-height: 200px;
    			overflow: auto;
		}  */
		
		.noti-body ul li{
			    border-bottom: 1px solid #EFF2F6 !important;
			    /* padding: 15px; */
		} 
		
		.noti-body ul li:hover, .message-body ul li:hover{
		    background: #f8f9fa;
		} 
		
		.noti-body a{
			width: 100%;
			height: 100%;
			display: inline-block;
			text-decoration: none;
			color: #888;
			font-size: 13px;
			font-weight: 300;
			white-space: normal;
			line-height: 20px;
			/* padding: 16px 15px 18px; */
			padding: 12px;
		}
			
		.noti-body .time{
			background-color: #f1f1f1;
			padding: 1px;
			border-radius: 5px;
		}
		
		.message-body .photo{
			float: left;
    		margin: 0 6px 6px 0;
		}
		
		.message-body .photo img{
			height: 40px;
		    width: 40px;
		    -webkit-border-radius: 50%!important;
		    -moz-border-radius: 50%!important;
		    -ms-border-radius: 50%!important;
		    -o-border-radius: 50%!important;
		    border-radius: 50%!important
		}
		
		.message-body .subject{
			display: block;
    		margin-left: 46px;
		}
		
		.message-body .subject .from{
			font-size: 13px;
    		font-weight: 600;
    		color: #5b9bd1;
		}
		
		.message-body .subject .time{
			font-size: 12px;
		    font-weight: 400;
		    opacity: .5;
		    filter: alpha(opacity=50);
		    float: right
		}
		
		.message-body .message{
			    display: block!important;
			    font-size: 12px;
			    line-height: 1.3;
			    margin-left: 46px;
		}
    
		.message-body a{
			display: block;
		    clear: both;
		    font-weight: 300;
		    line-height: 20px;
		    white-space: normal;
		    font-size: 13px;
		    padding: 16px 15px 18px;
		    text-shadow: none;
		    border-bottom: 1px solid #EFF2F6!important;
    		color: #888;
		}
		
		
		.sidebar-navigation ul{
			list-style: none;
			margin: 0;
			padding: 0;
		}
		
		.sidebar-navigation ul li a{
			display: block;
			/* margin: 10px;  */
   		 /* 	padding: 10px; */
   		 
   		 	padding: 10px 3px;
   		 	text-decoration: none;
   		 	color:#959fad;
		}
		
		.sidebar-navigation ul li a span i{
			margin-right: 2px;
		}
		.sidebar-navigation ul li{
			border-bottom: 1px solid #3d4957;
			padding: 10px;
		}
		
		.sidebar-navigation ul li:hover:not(:first-child){
			background-color: #2b3643;
		}
		
		/* .sidebar-navigation ul a:hover{
			padding-left: 30px;
		} */
		
		.user-anchor {
			display: inline-block;
		}
		
		.user-box .dropdown-menu{
			margin: 0;
			padding: 0;
		}
		
		.profile-drop ul li{
			display: block !important;
		}
		
		.profile-drop ul li a{
			display: block;
			text-align: center;
		}
		
		.profile-drop ul li a:hover{
			background-color: #f8f9fa;
		}
		
		.profile-drop ul li a i{
			margin-right: 3px;
		}
		
		.sidebar-navigation .user-profile{
			display: inline-block;
		}
		
		.sidebar-navigation .user-profile .u-name{
			color: #959fad;
		    margin-left: 12px;
		    display: inline-block;
		    font-weight: bold;
		}
		
		.sidebar-navigation .user-profile .u-info-container{
		    display: inline;
		}   
		
		.pont-container {
			    margin-left: 60px;
			    /* padding: 2px; */
    			background-color: #959fad;
    			text-align: center;
    			border-radius: 5px;
		}
		
		.pont-container .points{
			    display: inline;
			    border-right: 1px solid gray;
    			padding-right: 5px;
		}
		
		.pont-container .numbers{
				display: inline;
				padding: 5px;
		}
		
		.user-photo, .user-body {
			text-align: center;
		}
		
		.user-body {
			line-height: 25px;
		}
		.user-body .user-name {
			color: #959fad;
		}
		
		.user-points{
			    margin: auto;
			    width: 60%;
			    background-color: rebeccapurple;
			    border-radius: 5px;
		}
		
		.u-points, .u-number{
			display: inline;
		}
		
		.u-points {
			padding-right: 5px;
			border-right: 1px solid #777;
		}
		
		.content-container {
			padding-left: 180px;
			padding-top: 50px;
		}
	
	.container-fluid {
		margin-top: 15px;
	}
	
	.color-white {
		color:white !important;
	}

	.cart-icon {
		position: absolute;
	    width: 60px;
	    height: 50px;
	    font-size: 50px;
	    top: 0;
	}
	
	.stat-content {
		margin-left: 100px;
	}
	
	
	.custom-cards{
	    display: flex;
	    height: 80px;
	    width: 100%;
	}
	
	.bg-danger{
			background-color: #E91E63!important;	
	}
	.bg-cyan{
			background-color: #00BCD4 !important;	
	}
	.bg-light-green{
			background-color: #8BC34A !important;	
	}
	.bg-orange{
			background-color: #FF9800 !important;	
	}

	.bg-alizarin{
			background-color: #e74c3c !important;	
	}

	.bg-silver{
			background-color: #bdc3c7 !important;	
	}

	.bg-wisteria{
			background-color: #8e44ad !important;	
	}
	
	.bg-peterriver{
			background-color: #3498db !important;	
	}
	
	.bg-danger-dark {
		background-color: rgba(0, 0, 0, 0.12);;	
	}
	.custom-cards .icon{
	    line-height: 50px;
	    color: white;
	    display: inline-block;
	    font-size: 49px;
	    padding: 13px;
	}
	
	.custom-cards .content{
		display: inline-block;
		padding: 7px 10px;
	}
	
	.custom-cards .number-count-to{
		font-weight: bold;
	    text-align: center;
	}
	
	.mt-15 {
		margin-top: 15px !important;
	}

	.mt-30 {
		margin-top: 30px !important;
	}
	
	.top-5-heading{
	
		width: 85px;
	    margin-top: -33px;
	    margin-left: 5px;
	    background: white;
	    position: absolute;
    
	}
	
	.col-xs-2{
    background:#00f;
    color:#FFF;
}
.col-half-offset{
    margin-left:4.166666667%
}

.col-2dot4,
.col-sm-2dot4,
.col-md-2dot4,
.col-lg-2dot4,
.col-xl-2dot4 {
    position: relative;
    width: 100%;
    min-height: 1px;
    padding-right: 15px;
    padding-left: 15px;
}
.col-2dot4 {
    -webkit-box-flex: 0;
    -ms-flex: 0 0 20%;
    flex: 0 0 20%;
    max-width: 20%;
}
@media (min-width: 540px) {
    .col-sm-2dot4 {
        -webkit-box-flex: 0;
        -ms-flex: 0 0 20%;
        flex: 0 0 20%;
        max-width: 20%;
    }
}
@media (min-width: 720px) {
    .col-md-2dot4 {
        -webkit-box-flex: 0;
        -ms-flex: 0 0 20%;
        flex: 0 0 20%;
        max-width: 20%;
    }
}
@media (min-width: 960px) {
    .col-lg-2dot4 {
        -webkit-box-flex: 0;
        -ms-flex: 0 0 20%;
        flex: 0 0 20%;
        max-width: 20%;
    }
}
@media (min-width: 1140px) {
    .col-xl-2dot4 {
        -webkit-box-flex: 0;
        -ms-flex: 0 0 20%;
        flex: 0 0 20%;
        max-width: 20%;
    }
}

.top-5-user-info {

	position: absolute;
    margin-top: 70px;
    text-align: center;
    width: 100%;
    color: #959fad;
    font-weight: 700;

}

.top-5-body-row{

	border: 1px solid #2b3643;
    margin: 0;
    padding: 15px;
	
}
	</style>
</head>
<body>

	<div class="header">
		<div class="header-content">
			<div class="logo">
				<a href="#" class="pull-left"><span class="next">Next</span><span class="steps">Steps</span></a>
				<a href="#" class="sidebar-toggler"><i class="fa fa-bars" aria-hidden="true"></i></a>
			</div>
			<div class="right-header">
				<div class="header-search">
					<div class="search-div">
						<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
					</div>
				</div>
			</div>
			<div class="right-notifications">
				<div class="nav">
					<ul>
						<li class="header-notification-li">
						<div class="dropdown">
						  <div class="notification-box dropdown-toggle" data-toggle="dropdown"> <span class="badge">7</span> <a href="#"><i class="fa fa-bell-o" aria-hidden="true"></i></a></div>
							<div class="dropdown-menu custom-nav-dropdown">
						      <div class="not-drop">
						      	<ul>
						      		<li class="noti-header">
						      			<h3><span class="bold">12 pending</span> notifications <a href="#" class="pull-right"> view all</a></h3>
						      		</li>
						      		<li> 
						      			<div class="noti-body">
						      				<ul>
						      					<li><a href="">
						     						<img src="<c:url value="/resources/images/avtar1.png" />" alt="user-image" align="left" class="img-circle" style="width: 48px; margin-right: 10px;">
						      							<span style="display: flex; line-height: 15px;">Diabetes can usually be controlled with lifestyle changes</span>
						      							<span class="time"><strong>3 min</strong></span>
						      						</a>
						      					</li>
						      					<li><a href="">
						     						<img src="<c:url value="/resources/images/avtar1.png" />" alt="user-image" align="left" class="img-circle" style="width: 48px; margin-right: 10px;">
						      							<span style="display: flex; line-height: 15px;">Diabetes can usually be controlled with lifestyle changes</span>
						      							<span class="time"><strong>3 min</strong></span>
						      						</a>
						      					</li>
						      					<li><a href="">
						     						<img src="<c:url value="/resources/images/avtar1.png" />" alt="user-image" align="left" class="img-circle" style="width: 48px; margin-right: 10px;">
						      							<span style="display: flex; line-height: 15px;">Diabetes can usually be controlled with lifestyle changes</span>
						      							<span class="time"><strong>3 min</strong></span>
						      						</a>
						      					</li>
						      				</ul>
						      			</div>
						      		</li>
						      		
						      	</ul>
						      </div>
						    </div>
						    </div>
						</li>
						<li class="header-notification-li">
							<div class="dropdown">
								<div class="notification-box dropdown-toggle" data-toggle="dropdown"> <span class="badge">7</span> <a href="#"><i class="fa fa-envelope-o" aria-hidden="true"></i></a></div>
								<div class="dropdown-menu custom-nav-dropdown">
							      <div class="message-drop">
							      	<ul>
							      		<li class="message-header">
							      			<h3>You have <span class="bold">7</span> new messages <a href="#" class="pull-right"> view all</a></h3>
							      		</li>
							      		<li> 
							      			<div class="message-body">
							      				<ul>
							      					<li>
							      					
							      						<a href="#">
		                                                    <span class="photo">
		                                                        <img src="<c:url value="/resources/images/avtar1.png" />" class="img-circle" alt=""> </span>
		                                                    <span class="subject">
		                                                        <span class="from"> Lisa Wong </span>
		                                                        <span class="time">Just Now </span>
		                                                    </span>
		                                                    
		                                                    <span class="message"> Vivamus sed auctor nibh congue nibh. auctor nibh auctor nibh... </span>
		                                                </a>
							      					
							      					</li>
							      					<li>
							      					
							      						<a href="#">
		                                                    <span class="photo">
		                                                        <img src="<c:url value="/resources/images/avtar1.png" />" class="img-circle" alt=""> </span>
		                                                    <span class="subject">
		                                                        <span class="from"> Lisa Wong </span>
		                                                        <span class="time">Just Now </span>
		                                                    </span>
		                                                    
		                                                    <span class="message"> Vivamus sed auctor nibh congue nibh. auctor nibh auctor nibh... </span>
		                                                </a>
							      					
							      					</li>
							      					<li>
							      					
							      						<a href="#">
		                                                    <span class="photo">
		                                                        <img src="<c:url value="/resources/images/avtar1.png" />" class="img-circle" alt=""> </span>
		                                                    <span class="subject">
		                                                        <span class="from"> Lisa Wong </span>
		                                                        <span class="time">Just Now </span>
		                                                    </span>
		                                                    
		                                                    <span class="message"> Vivamus sed auctor nibh congue nibh. auctor nibh auctor nibh... </span>
		                                                </a>
							      					
							      					</li>
							      				</ul>
							      			</div>
							      		</li>
							      		
							      	</ul>
							      </div>
							    </div>
							</div>
						</li>
						<li class="header-notification-li"><div class="notification-box"> <span class="badge">7</span> <a href="#"><i class="fa fa-tasks" aria-hidden="true"></i></a></div></li>
						<li class="user-box header-notification-li">
							<div class="dropdown">
								<a href="#" class="dropdown-toggle user-anchor" data-toggle="dropdown"><img src="<c:url value="/resources/images/avtar1.png" />" alt="user-image" class="img-circle">
									<span class="header-user-name">Sunil Jaiswal </span><i class="fa fa-angle-down"></i>
								</a> 
								<div class="dropdown-menu">
							      <div class="profile-drop">
							      	<ul>
							      		<li><a href="#"><i class="fa fa-wrench" aria-hidden="true"></i> Setting</a></li>
							      		<li><a href="#"><i class="fa fa-user" aria-hidden="true"></i> Profile</a></li>
							      		<li><a href="#"><i class="fa fa-sign-out" aria-hidden="true"></i>Logout</a></li>
							      	</ul>
							      </div>
							    </div>
							</div>
							 
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	
	<div class="page-container">
		<div class="left-sidebar">
			<div class="sidebar-navigation">
				<ul>
					<li>
						<%-- <div class="user-profile">
							<img src="<c:url value="/resources/images/avtar1.png" />" alt="user-image" align="left" class="img-circle" style="width: 48px;">
							<div class="u-info-container">
								<span class="u-name">Sunil Jaiswal</span>	
								<div class="pont-container"><div class="points">Points</div><div class="numbers">24</div></div>
							</div>
							
						</div> --%>
						
						<div class="user-info">
							<div class="user-photo">
								<img src="<c:url value="/resources/images/avtar1.png" />" alt="user-image" align="middle" class="img-circle" style="width: 48px;">
							</div>
							<div class="user-body">
								<div class="user-name">Sunil Jaiswal</div>
								<div class="user-points">
									<div class="u-points">Points</div>
									<div class="u-number">24</div>
								</div>
							</div>
						</div>
					</li>
					<li><a href=""><span> <i class="fa fa-home" aria-hidden="true"></i> Dashboard</span></a></li>
					<li><a href=""><span> <i class="fa fa-newspaper-o" aria-hidden="true"></i> New feeds</span></a></li>
					<li><a href=""><span> <i class="fa fa-search" aria-hidden="true"></i> Find jobs</span></a></li>
					<li><a href=""><span> <i class="fa fa-plane" aria-hidden="true"></i> Short tricks</span></a></li>
					<li><a href=""><span> <i class="fa fa-question-circle" aria-hidden="true"></i> Ask a question</span></a></li>
					<li><a href=""><span> <i class="fa fa-shopping-bag" aria-hidden="true"></i> Share an experience</span></a></li>
					<li><a href=""><span> <i class="fa fa-files-o" aria-hidden="true"></i> Placement papers</span></a></li>
					<li><a href=""><span> <i class="fa fa-spinner" aria-hidden="true"></i> Track status</span></a></li>
					<li><a href=""><span> <i class="fa fa-video-camera" aria-hidden="true"></i> Tutorials</span></a></li>
					<li><a href=""><span> <i class="fa fa-television" aria-hidden="true"></i> Quiz</span></a></li>
				</ul>
			</div>
		</div>
		<div class="content-container">
			<div class="container-fluid">
  				<!-- Main container code goes here starts-->
  				
  				<!-- Main container code goes here ends-->
  				
				  <div class="row">
		                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
		                    <div class="custom-cards bg-danger">
		                        <div class="icon bg-danger-dark">
		                            <i class="fa fa-spinner" aria-hidden="true"></i>
		                        </div>
		                        <div class="content color-white">
		                            <div class="number-count-to" data-from="0" data-to="125" data-speed="15" data-fresh-interval="20">4</div>
		                            <div class="text">PENDING POSTS</div>
		                        </div>
		                    </div>
		                </div>
		                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
		                    <div class="custom-cards bg-cyan">
		                        <div class="icon bg-danger-dark">
		                            <i class="fa fa-briefcase" aria-hidden="true"></i>
		                        </div>
		                        <div class="content color-white">
		                            <div class="number-count-to" data-from="0" data-to="125" data-speed="15" data-fresh-interval="20">125</div>
		                            <div class="text">NEW JOBS</div>
		                        </div>
		                    </div>
		                </div>
		                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
		                    <div class="custom-cards bg-light-green">
		                        <div class="icon bg-danger-dark">
		                            <i class="fa fa-search" aria-hidden="true"></i>
		                        </div>
		                        <div class="content color-white">
		                            <div class="number-count-to" data-from="0" data-to="125" data-speed="15" data-fresh-interval="20">25</div>
		                            <div class="text">VIEWD YOUR PROFILE</div>
		                        </div>
		                    </div>
		                </div>
		                
		                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
		                    <div class="custom-cards bg-orange">
		                        <div class="icon bg-danger-dark">
		                            <i class="fa fa-users" aria-hidden="true"></i>
		                        </div>
		                        <div class="content color-white">
		                            <div class="number-count-to" data-from="0" data-to="125" data-speed="15" data-fresh-interval="20">500</div>
		                            <div class="text">CONNECTIONS</div>
		                        </div>
		                    </div>
		                </div>
		            </div>
		            
		             <div class="row mt-15">
		                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
		                    <div class="custom-cards bg-alizarin">
		                        <div class="icon bg-danger-dark">
		                            <i class="fa fa-check" aria-hidden="true"></i>
		                        </div>
		                        <div class="content color-white">
		                            <div class="number-count-to" data-from="0" data-to="125" data-speed="15" data-fresh-interval="20">4</div>
		                            <div class="text">ANSWERED QUESTIONS</div>
		                        </div>
		                    </div>
		                </div>
		                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
		                    <div class="custom-cards bg-silver">
		                        <div class="icon bg-danger-dark">
		                            <i class="fa fa-eye" aria-hidden="true"></i>
		                        </div>
		                        <div class="content color-white">
		                            <div class="number-count-to" data-from="0" data-to="125" data-speed="15" data-fresh-interval="20">125</div>
		                            <div class="text">EYES ON</div>
		                        </div>
		                    </div>
		                </div>
		                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
		                    <div class="custom-cards bg-wisteria">
		                        <div class="icon bg-danger-dark">
		                            <i class="fa fa-comments-o" aria-hidden="true"></i>
		                        </div>
		                        <div class="content color-white">
		                            <div class="number-count-to" data-from="0" data-to="125" data-speed="15" data-fresh-interval="20">25</div>
		                            <div class="text">COMMENTS ON YOUR POSTS</div>
		                        </div>
		                    </div>
		                </div>
		                
		                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
		                    <div class="custom-cards bg-peterriver">
		                        <div class="icon bg-danger-dark">
		                            <i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
		                        </div>
		                        <div class="content color-white">
		                            <div class="number-count-to" data-from="0" data-to="125" data-speed="15" data-fresh-interval="20">500</div>
		                            <div class="text">LIKED POSTS</div>
		                        </div>
		                    </div>
		                </div>
		            </div>
		            
		            
		            
					    <div class="row mt-30 top-5-body-row">
					    
					    	<h3 class="top-5-heading"> TOP 5 </h3>
					    
					        <div class="col-lg-2dot4">
					        	<div class="top-5-wrapper" style="position: relative;">
						        	<div class="upper-half" style="background-color: #ffcccc; width: 100%; height: 40px; border-top-left-radius: 5px; border-top-right-radius: 5px; margin-bottom: 2px;">
						        		
						        	</div>
						        	<div class="lower-half" style="background-color: #273c75; width: 100%; height: 160px; border-bottom-left-radius: 5px; border-bottom-right-radius: 5px; margin-top: 2px;">
						        		<div class="top-5-user-info">
							        		<div>
							        			Sunil Jaiswal
							        		</div>
							        		<div>
							        			<i>Indore(India)</i>
							        		</div>
							        		<div>
							        			19 Points
							        		</div>
							        	</div>
						        		
						        	</div>
						        	<img src="<c:url value="/resources/images/avtar1.png" />" alt="user-image" align="middle" class="img-circle" style="width: 105px; position:absolute; top:-80px; left:0; right:0; bottom:0; margin:auto; border-radius: 2px solid #2c3e50;">
					        	</div>
					        </div>
					        <div class="col-lg-2dot4" id="p2">
					        
					        	<div class="top-5-wrapper" style="position: relative;">
						        	<div class="upper-half" style="background-color: #ffcccc; width: 100%; height: 40px; border-top-left-radius: 5px; border-top-right-radius: 5px; margin-bottom: 2px;">
						        		
						        	</div>
						        	<div class="lower-half" style="background-color: #273c75; width: 100%; height: 160px; border-bottom-left-radius: 5px; border-bottom-right-radius: 5px; margin-top: 2px;">
						        		<div class="top-5-user-info">
							        		<div>
							        			Sunil Jaiswal
							        		</div>
							        		<div>
							        			<i>Indore(India)</i>
							        		</div>
							        		<div>
							        			19 Points
							        		</div>
							        	</div>
						        		
						        	</div>
						        	<img src="<c:url value="/resources/images/avtar1.png" />" alt="user-image" align="middle" class="img-circle" style="width: 105px; position:absolute; top:-80px; left:0; right:0; bottom:0; margin:auto; border-radius: 2px solid #2c3e50;">
					        	</div>
					        	
					        </div>
					        <div class="col-lg-2dot4" id="p3">
					        	<div class="top-5-wrapper" style="position: relative;">
						        	<div class="upper-half" style="background-color: #ffcccc; width: 100%; height: 40px; border-top-left-radius: 5px; border-top-right-radius: 5px; margin-bottom: 2px;">
						        		
						        	</div>
						        	<div class="lower-half" style="background-color: #273c75; width: 100%; height: 160px; border-bottom-left-radius: 5px; border-bottom-right-radius: 5px; margin-top: 2px;">
						        		<div class="top-5-user-info">
							        		<div>
							        			Sunil Jaiswal
							        		</div>
							        		<div>
							        			<i>Indore(India)</i>
							        		</div>
							        		<div>
							        			19 Points
							        		</div>
							        	</div>
						        		
						        	</div>
						        	<img src="<c:url value="/resources/images/avtar1.png" />" alt="user-image" align="middle" class="img-circle" style="width: 105px; position:absolute; top:-80px; left:0; right:0; bottom:0; margin:auto; border-radius: 2px solid #2c3e50;">
					        	</div>
					        </div>
					        <div class="col-lg-2dot4" id="p4">
					        
					        <div class="top-5-wrapper" style="position: relative;">
						        	<div class="upper-half" style="background-color: #ffcccc; width: 100%; height: 40px; border-top-left-radius: 5px; border-top-right-radius: 5px; margin-bottom: 2px;">
						        		
						        	</div>
						        	<div class="lower-half" style="background-color: #273c75; width: 100%; height: 160px; border-bottom-left-radius: 5px; border-bottom-right-radius: 5px; margin-top: 2px;">
						        		<div class="top-5-user-info">
							        		<div>
							        			Sunil Jaiswal
							        		</div>
							        		<div>
							        			<i>Indore(India)</i>
							        		</div>
							        		<div>
							        			19 Points
							        		</div>
							        	</div>
						        		
						        	</div>
						        	<img src="<c:url value="/resources/images/avtar1.png" />" alt="user-image" align="middle" class="img-circle" style="width: 105px; position:absolute; top:-80px; left:0; right:0; bottom:0; margin:auto; border-radius: 2px solid #2c3e50;">
					        	</div>
					        	
					        </div>
					        <div class="col-lg-2dot4" id="p5">
					        <div class="top-5-wrapper" style="position: relative;">
						        	<div class="upper-half" style="background-color: #ffcccc; width: 100%; height: 40px; border-top-left-radius: 5px; border-top-right-radius: 5px; margin-bottom: 2px;">
						        		
						        	</div>
						        	<div class="lower-half" style="background-color: #273c75; width: 100%; height: 160px; border-bottom-left-radius: 5px; border-bottom-right-radius: 5px; margin-top: 2px;">
						        		<div class="top-5-user-info">
							        		<div>
							        			Sunil Jaiswal
							        		</div>
							        		<div>
							        			<i>Indore(India)</i>
							        		</div>
							        		<div>
							        			19 Points
							        		</div>
							        	</div>
						        		
						        	</div>
						        	<img src="<c:url value="/resources/images/avtar1.png" />" alt="user-image" align="middle" class="img-circle" style="width: 105px; position:absolute; top:-80px; left:0; right:0; bottom:0; margin:auto; border-radius: 2px solid #2c3e50;">
					        	</div>
					        </div>
					    </div>
		            
		            
		            
		            
  
			</div>
		</div>
	</div>
	
</body>
</html>
<!-- 
https://blackrockdigital.github.io/startbootstrap-sb-admin/ 
https://colorlib.com/wp/free-bootstrap-admin-dashboard-templates/

-->