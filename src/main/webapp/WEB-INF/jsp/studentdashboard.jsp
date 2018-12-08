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
    <script src="<c:url value="/resources/jslibrary/underscore-min.js" />"></script>
    <script src="<c:url value="/resources/js/Utils.js" />"></script>
  	 <script src="<c:url value="/resources/js/dashboard.js" />"></script>
  	
	
	
	<style>
		body{
			padding: 0;
			margin:0;
			font-size: 14px;
		}
		
		* {box-sizing: border-box;}
		
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
			width: 200px;
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
		
		.header-notification-li {
			cursor: pointer;
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
			width: 230px;
			/* height: 2000px; */
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
			padding-left: 230px;
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

.sidebar-navigation .nav{
	display: block;
}

.sidebar-navigation .nav-tabs {
	border-bottom: none;
}

.create-post, .create-suggetions{
	border-top: 4px solid #2b3643;
}
.create-post .post-u-img, .create-suggetions .post-u-img{
	float: left;
	display: inline;
}

.news-feeds-cards .feeds-u-img{
	float: left;
	display: inline;
}

.news-feeds-cards .news-feeds-u-name{
	font-size: 14px;
    font-weight: 600;
    color: #5b9bd1;
	display: inline;
}

.news-feeds-cards .news-feeds-settings{
	color: #959fad;
    position: absolute;
    top: 5px;
    right: 1.25rem;
    cursor:pointer; 
    display: inline-block;
}

.news-feeds-cards .news-feeds-settings .setting-items a{
	color: #959fad;
	font-size: 14px;
    
}

.news-feeds-footer .likes-comments-count{
	display: block;
    font-size: 12px;
    padding-bottom:2px;
    border-bottom: 1px solid rgba(0,0,0,.125);
}

/* .likes-comments-count .likes:hover, .likes-comments-count .comments:hover{
	color: #1384C6;
	text-decoration: underline;
} */

.news-feeds-cards .news-feeds-content-img img:hover{
	opacity: 0.7;
	cursor: pointer;
}
.news-feeds-footer .likes-comments .feeds-like, .news-feeds-footer .likes-comments .feeds-comments{
	display: inline-block;
    margin-top: 2px;
    padding: 2px 7px;
    cursor: pointer;
    font-size: 12px;
}
.news-feeds-cards .news-feeds-content{
	font-size: 14px;
}
.news-feeds-footer, .tricks-footer {
	background-color: transparent;
	padding: 0;
}

.news-feeds-footer .inner-footer, .tricks-inner{
	padding: .75rem 1.25rem;
}

.news-feeds-footer .news-feeds-comments, .tricks-comment-comments{
	background-color: rgba(0,0,0,.03);
}

/* .news-feeds-footer .news-feeds-comments .news-feeds-write-comment{
	min-height: 45px;
	word-wrap: break-word;
	padding: 3px 30px 3px 3px;
	font-size: 14px;
} */

.news-feeds-write-comment{
	min-height: 45px;
	word-wrap: break-word;
	padding: 3px 30px 3px 3px;
	font-size: 14px;
} 

.news-feeds-write-comment-wrapper{
    border: 1px solid rgba(0,0,0,.125);
    margin-left: 55px;
    background: white;
    position: relative;
}
/* .news-feeds-footer .news-feeds-comments .news-feeds-write-comment-wrapper{
    border: 1px solid rgba(0,0,0,.125);
    margin-left: 55px;
    background: white;
    position: relative;
} */

.news-feeds-write-comment-camera-icn{
	top: 5px;
    right: 10px;
    position: absolute;
}
/* .news-feeds-comments .news-feeds-write-comment-camera-icn{
	top: 5px;
    right: 10px;
    position: absolute;
} */

.file-input-write-icon i{
	color: #959fad;
	cursor: pointer;
}
/* .news-feeds-comments .news-feeds-write-comment-camera-icn .file-input-write-icon i{
	color: #959fad;
	cursor: pointer;
} */

.news-feeds-write-comment-wrapper .news-feeds-img-destination img{
	padding: 5px;
}
.news-feeds-comments-input-img{
	display: inline;
    float: left;
}
/* .news-feeds-footer .news-feeds-comments .news-feeds-comments-input-img{
	display: inline;
    float: left;
} */


.news-feeds-footer .likes-comments .feeds-like i, .news-feeds-footer .likes-comments .feeds-comments i{ 
	padding-right: 2px;
}

.news-feeds-footer .likes-comments-count span{
	/* color : #959fad; */
	color : #1384C6; 
}


.news-feeds-cards .news-feeds-u-qua{
	font-size: 13px;
    color: #959fad;
	display: block;
}

.create-post .post-editor{
	display: flex;
	min-height: 70px;
    word-wrap: break-word;
}

.create-suggetions .suggetion-editor{
	display: flex;
	/* min-height: 50px; */
    word-wrap: break-word;
}

[contenteditable]:focus {
    outline: 0px solid transparent;
}

div[data-placeholder]:not(:focus):not([data-div-placeholder-content]):before {

    content: attr(data-placeholder);

    float: left;

    margin-left: 2px;

    color: #b3b3b3;

}

.create-post-sub-btn{
	padding: 2px 11px;
    float: right;
}

.news-feeds-post-sub-btn{
	padding: 2px 11px;
    float: left;
    margin-top: 5px;
    display: none;
}

.news-feed-user-comments {
	margin-top: 20px;
}

/* .news-feeds-comments .news-feed-user-comments {
	margin-top: 20px;
} */

.news-feed-user-comments-img{
	display: inline;
    float: left;
}
/* .news-feeds-comments .news-feed-user-comments .news-feed-user-comments-img{
	display: inline;
    float: left;
} */

.news-feed-user-comments-content p{
	display: flex;
	font-size: 14px;
	line-height: 17px;
}
/* .news-feeds-comments .news-feed-user-comments .news-feed-user-comments-content p{
	display: flex;
	font-size: 14px;
	line-height: 17px;
} */

.news-feed-user-comments-name{
	font-size: 14px;
    font-weight: 600;
    color: #5b9bd1;
}
/* .news-feeds-comments .news-feed-user-comments .news-feed-user-comments-content .news-feed-user-comments-name{
	font-size: 14px;
    font-weight: 600;
    color: #5b9bd1;
} */

.news-feed-user-comments-settings{
    color: #959fad;
    font-size: 12px;
}
/* .news-feeds-comments .news-feed-user-comments .news-feed-user-comments-content .news-feed-user-comments-settings{
    color: #959fad;
    font-size: 12px;
} */

.inline {
	display: inline !important;
}

.pointer{
	cursor: pointer !important;
}
/* .news-feed-user-comments-content .news-feed-user-comments-like-dislike{
		font-size: 14px;
	    margin-left: 55px;
} */
.news-feed-user-comments-like-dislike{
		font-size: 14px;
	    margin-left: 55px;
}

.news-feed-user-comments-like-dislike .like-me{
	    padding-right: 15px;
	    cursor: pointer;
	    color:#1384C6;
	    border-right:1px solid rgba(0,0,0,.125);
}
/* .news-feed-user-comments-content .news-feed-user-comments-like-dislike .like-me{
	    padding-right: 15px;
	    cursor: pointer;
	    color:#1384C6;
	    border-right:1px solid rgba(0,0,0,.125);
} */

.dislike-me{
	    padding-left: 15px;
	    cursor: pointer;
	    color:#1384C6;
}
/* .news-feed-user-comments-content .news-feed-user-comments-like-dislike .dislike-me{
	    padding-left: 15px;
	    cursor: pointer;
	    color:#1384C6;
} */

.trick-wrapper .news-feeds-write-comment-camera-icn{
	display: none;
}
.custom-btn{
	
	color: #959fad;
    background-color: #2c3e50;
    border-color: #2c3e50;

}
.custom-btn:hover {
    color: #959fad;
    background-color: #2b3643; /* new color goes her */
    border-color: #2c3e50;
}

.custom-btn.focus, .custom-btn:focus {
    color: #959fad;
    background-color: #2b3643; /* new color goes her */
    border-color: #2c3e50;
}


div[data-placeholder]:not(:focus):not([data-div-placeholder-content]):before {

    content: attr(data-placeholder);
    float: left;
    margin-left: 2px;
	font-style:italic;
    color: #b3b3b3;
}

.create-post-footer .file-upload-icon
{
    cursor: pointer;
    color: #959fad;
    padding:8px;
}

.create-post-footer .file-upload-icon:hover
{
	border: 1px solid transparent;
	border-radius:50%;
	background-color:#c8d6e5;
}

.create-post-footer .file-btn, .news-feeds-footer .file-btn, .compose-right .file-btn
{
    display: none;
}

.news-feeds-cards {
	margin: 15px 0;
}

#post-like-modal .modal-title{
	font-size: 14px;
    font-weight: bold;
    color: #959fad;
}

#post-like-modal .modal-header .custom-cross, #image-preview-modal .modal-header .custom-cross, #job-details .modal-header .custom-cross, #post-trick-modal .custom-cross {
	position: absolute;
    top: -19px;
    right: -8px;
    font-size: 32px;
    cursor: pointer;
}

.job-cards .card-header .custom-card-cross {
	position: absolute;
    top: -19px;
    right: -8px;
    font-size: 32px;
    cursor: pointer;
}

#post-like-modal .liker-container .liker-info-name{
	font-size: 14px;
    color: #5b9bd1;
    font-weight: 600;
    display: table;
}

#post-like-modal .liker-container .liker-photo{
	display: inline;
    float: left;
}

#post-like-modal .liker-container .connect .btn{
	    padding: 0.15rem .75rem;
	    font-size: 14px;
}

#post-like-modal .liker-container .liker-info{
	  /*  margin-left: 41px; */
	   line-height: 17px;
	   display: inline-block;
}

#post-like-modal .liker-container .liker-info-role{
	   display: table;
	   font-size: 12px;
}

#post-like-modal .modal-body .liker-container:not(:first-child){

	border-top: 1px solid rgba(0,0,0,.125);
	padding-top: 12px;

}

#post-like-modal .modal-body{

	max-height: 400px;
    overflow: auto;

}

#make-me-larg {
	width: 100%;
	height: 100%;
}

#image-preview-modal .modal-header{
    padding-bottom: 0;
    border-bottom: none; 
}

.add-box-shadow {
    background: #ffffff;
    -webkit-box-shadow: 0 1px 6px rgba(0, 0, 0, 0.175);
    box-shadow: 0 1px 6px rgba(0, 0, 0, 0.175);
}


.job-cards .job-cards-u-name {
	font-size: 14px;
    font-weight: 600;
    color: #5b9bd1;
	display: table;
}

.job-cards {
	margin-bottom: 30px;
}

.job-cards .job-cards-u-role {
	display: table;
	font-size: 14px;
	line-height: 12px;
}

.job-cards .job-cards-posted-on {
	display: table;
	font-size: 12px;
}

.job-cards .job-cards-u-img {
	float: left;
}

.job-cards .job-basic-detail i{
	color: #959fad;
}

.job-cards .job-basic-detail .lbl{
	font-size: 14px;
}

.job-cards .btn{
	    padding: .175rem .75rem;
	    line-height: 1.2;
}

.job-cards .job-card-footer{
		margin-top: 10px;
		text-align: center;
}

.job-cards .job-card-footer i{
		cursor: pointer;
}

.job-cards .job-card-footer a{
		font-size: 14px;
}

.border-bottom {
	border-bottom: 1px solid rgba(0,0,0,.125);
}

.border-right {
	border-right: 1px solid rgba(0,0,0,.125);
}

.create-suggetions  .card-footer{
	border-top: none;
	font-size: 14px;
}

.create-suggetions  .card-footer .review-body, .tricks-body{
	margin-left: 50px;
}

.tricks-body {
	font-size: 14px;
}

.trick-u-des {
	display: table;
}
.create-suggetions  .card-footer .review-body .review-u-name, .trick-u-name{
	color: #5b9bd1;
}

.trick-u-designation {
    padding-right: 10px;
    border-right: 1px solid rgba(0,0,0,.125);
}

.trick-u-location{
	padding-left: 10px;	
}

.trick-u-des i{
	    color: #959fad;
}
.create-suggetions  .card-footer .review-body .rating-value{
	font-size: 10px !important;
    background-color: blue;
    padding: 1px 5px;
    border-radius: 5px;
    color: white;
}

.create-suggetions  .card-footer .users-review-box:not(:last-child){
	border-bottom: 1px solid rgba(0,0,0,.125);
}

.create-suggetions  .card-footer .users-review-box:not(:first-child){
	margin-top: 10px;
}

.create-suggetions  .card-footer .review-body .rating-value i{
	font-size: 9px !important;
}

.review-panel{
	padding-left: 0;
}
/** rating related work starts**/

	.rating-row{
		    margin-left: 42px;
	}
	.rating {
      float:left;
      font-size: 14px;
    }

    .rating:not(:checked) > input {
        position:absolute;
        top:-9999px;
        clip:rect(0,0,0,0);
    }

	.rating:not(:checked) > label {
        float:right;
        width:0.8em;
        /* padding:0 .1em; */
        overflow:hidden;
        white-space:nowrap;
        cursor:pointer;
        font-size:170%;
        /* line-height:1.2; */
        color:#ddd;
    }

    
    .rating:not(:checked) > label:before {
        content: '\2605 ';
    }

    .rating > input:checked ~ label {
        color: dodgerblue;
        
    }

    .rating:not(:checked) > label:hover,
    .rating:not(:checked) > label:hover ~ label {
        color: dodgerblue;
        
    }

    .rating > input:checked + label:hover,
    .rating > input:checked + label:hover ~ label,
    .rating > input:checked ~ label:hover,
    .rating > input:checked ~ label:hover ~ label,
    .rating > label:hover ~ input:checked ~ label {
        color: dodgerblue;
        
    }

    .rating > label:active {
        position:relative;
        top:2px;
        left:2px;
    }
    
    

/** rating related work ends**/


/** Short tricks **/

.tircks-leftbar-main .ticks-topbar{

	float: left;
    width: 100%;
    padding: 23px 20px;
    background-color: #fff;
    border-top: 4px solid #2b3643;
    border-left: 1px solid #e4e4e4;
    border-bottom: 1px solid #e4e4e4;
    border-right: 1px solid #e4e4e4;
    -webkit-box-shadow: 0 0 1px rgba(0,0,0,0.24);
    -moz-box-shadow: 0 0 1px rgba(0,0,0,0.24);
    -ms-box-shadow: 0 0 1px rgba(0,0,0,0.24);
    -o-box-shadow: 0 0 1px rgba(0,0,0,0.24);
    box-shadow: 0 0 1px rgba(0,0,0,0.24);
    margin-bottom: 20px;
}

.tricks-uploader-pic{

	float: left;
}

.tricks-uploader-methods {
    float: right;
    margin-top: 10px;
}
.tricks-uploader-methods ul li {
    display: inline-block;
    margin-right: 6px;
}

.tricks-uploader-methods ul li a {
    color: #b2b2b2;
    font-size: 16px;
    display: inline-block;
    background-color: #e5e5e5;
    height: 40px;
    padding: 0 15px;
    line-height: 40px;
    font-weight: 500;
}


.post_topbar {
    float: left;
    width: 100%;
    position: relative;
    padding: 20px 20px 15px 20px;
}

.tricks-content {
	font-size: 14px;
	margin-top: 20px;
	color: #686868;
	line-height: 24px;
	
	    font-style: inherit;
    font-variant-ligatures: inherit;
    font-variant-caps: inherit;
    font-variant-numeric: inherit;
    font-variant-east-asian: inherit;
    font-weight: inherit;
    font-stretch: inherit;
    font-size: 100%;
    line-height: inherit;
    font-family: inherit;
}

.trick-wrapper .card-footer {
	background-color: transparent;
}

.trick-wrapper .card-footer {
	background-color: transparent;
	font-size: 14px;
}

.trick-wrapper .card-footer {
	background-color: transparent;
	font-size: 14px;
}

.trick-wrapper .card-footer span:hover {
	color:#0062cc;
}

/** Media **/


@media screen and (max-width: 600px){

	.right-notifications .header-user-name{
		display: none;
	}
	
	.header-content .logo{
		    width: 145px;
	}
}

@media screen and (min-width: 601px){

	.right-notifications .header-user-name{
		display: inline;
	}
	
	.header-content .logo{
		    width: 200px;
	}
}


@media screen and (max-width: 1000px){

	.left-sidebar {
  		width: 50px;
	}
	
	.left-sidebar ul li{
		text-align: center;
	}
	
	.content-container{
		padding-left: 50px;
	}
	
	.left-sidebar ul li span:nth-child(2){
		display: none;
	}
	
	.left-sidebar ul li span:nth-child(1) i{
		font-size: 24px;
	}
	
	.left-sidebar ul li .user-body{
		display: none;
	}

	.left-sidebar ul li .user-photo img{
		width: 33px !important;
	}
	
}

@media screen and (min-width: 1001px){

	.left-sidebar {
  		width: 230px;
	}
	
	.content-container{
		padding-left: 230px;
	}
	
	.left-sidebar ul li{
		text-align: left;
	}
	
	.left-sidebar ul li span:nth-child(2){
		display: inline;
	}
	
	.left-sidebar ul li span:nth-child(1) i{
		font-size: 14px;
	}
	
	.left-sidebar ul li .user-body{
		display: inline;
	}

	.left-sidebar ul li .user-photo img{
		width: 48px !important;
	}
	
}

/** Media ends**/

.pd-b-10 {
	padding-bottom:  10px !important;
}
/** Short tricks **/

/** remove dropdown arrao **/

.dropdown-toggle::after {
    display:none;
}

/** **/

.online-users-container {
	margin-top: 50px;
	position: absolute;
	background-color: #2c3e50;
	top: 0;
	right: 0;
	height: 100%;
	width: 160px;
	
}

.online-users-container .chat-list-div ul{
	padding: 0;
	margin: 0;
	list-style: none;
} 


.online-users-container .chat-list-div ul li:nth-child(1){
	margin-top: 16px;
}

.online-users-container .chat-list-div ul li{
	padding: 10px 7px;
    cursor: pointer;
	cursor: pointer;
}

.online-users-container .chat-list-div ul li:hover{
	background-color:#2b3643;
}

.online-users-container .chat-list-div ul li a img{
	width: 36px;
	
}

/* .online-users-container .chat-list-div{
	margin-top: 20px;
    margin-left: 7px;
    margin-right: 5px;
} */

.online-users-container .chat-list-div .chat-bullet{
	position: absolute;
    left: 28px;
    bottom: 0;
}

.online-users-container .chat-list-div .chat-bullet i{
	position: absolute;
    left: 0;
    bottom: 0;
    color: green;
}

.online-users-container .chat-list-div .chat-user-name{
	color: #959fad;
}

.online-users-container .chat-list-div .chat-bullet i{
	font-size: 12px;
    vertical-align: middle;
    float: right;
}

.chat-popup .chat-u-img img {
	width: 50px;
	height: 50px;
	float: left;
	margin-right: 5px;
}
.chat-popup .header-user-body {
	/* margin-left: 55px; */
}

.chat-popup .chat-u-name {
	font-size: 18px;
    line-height: 20px;
}

.chat-popup .message-count {
	display: table;
	font-size: 12px;
}

.chat-popup .chat-header-right {
	float: right;
}

.chat-popup .chat-header-left {
	display: inline-block;
}

.chat-popup .card-header{
	
	padding: .3rem 0.5rem !important;
	background-color: transparent;
	background: #f5f5f5;
}

.chat-popup .card-body{
	
	padding: 0.5rem !important;
	max-height: 250px;
	min-height: 250px;
    overflow: auto;
    background: #e6eaea;
}

.chat-popup .message-container ul{
	list-style: none;
    padding: 0;
    margin: 0;
}

.chat-popup .message-container ul .recieve img{
	float: left;
	width: 30px;
	/* height: 10px; */
	border-radius: 50%;
	
}

.chat-popup .message-container ul .recieve p{
	display: inline-block;
    padding: 10px 15px;
    border-radius: 20px;
    max-width: 240px;
    line-height: 130%;
    background: #435f7a;
    color: #f5f5f5;
	
}

.chat-popup .message-container ul .sent p{
	display: inline-block;
    padding: 10px 15px;
    border-radius: 20px;
    max-width: 240px;
    line-height: 130%;
    background: #f5f5f5;
    color: #32465a;
}

.chat-popup .message-container ul .sent img{
	float: right;
	width: 30px;
	/* height: 10px; */
	border-radius: 50%;
}

.hide {
	
	display: none !important;
}

.display-block {
	display: block !important; 
}

.message-compose .msg-input {
	
	font-family: "proxima-nova", "Source Sans Pro", sans-serif;
    float: left;
    border: none;
    width: calc(100% - 78px);
    padding: 11px 32px 10px 8px;
    font-size: 0.8em;
    color: #32465a;
}

.message-compose-container {
	background: #e6eaea;
}

.message-compose-container .attach{
	display: inline-block;
    padding: 9px 12px;
}

.message-compose-container .send{
	display: inline-block;
    padding: 9px 12px;
    background: #435f7a;
}

.company-holder{
	padding-bottom: 10px;
	margin: 0;
	border-top: 4px solid #2b3643;
	border-radius: 5px;
	background: #e6eaea;
}    
.pd-top-10 {
	padding-top: 10px;	
}

.pd-left-10 {
	padding-left: 10px;
}

.pd-right-10{
	padding-right: 10px;
}

.comp-name i{
	color: #007bff;
}

.comp-text {
	color: #1384C6;
	font-weight: 600;
}

/* .papers-main-container{
	    margin-right: 160px !important;
} */

.company-questions-container{
	margin-top:  10px;
}

.company-questions-container .card-header{
	background: transparent;
}

.company-questions-container .card:not(:last-child){
	margin-bottom: 10px;
}

.company-questions-container .card-header img{
	width: 50px;
	border-radius: 50%;
	float: left;
	margin-right: 10px;
}

.company-questions-container .card-header .paper-user-quality{
	line-height: 27px;
    display: table;
}

.company-questions-container .card-header .paper-user-quality i{
	color:#5b9bd1;
}

.company-questions-container .card-header .paper-user-quality i:not(:first-child){
	padding-left: 5px;
}

.company-questions-container .card-header .paper-user-name{
    font-weight: 600;
    color: #5b9bd1;
}

.papaer-user-div  {
	padding-right: 10px;
    display: inline;
    float: left;
}

.paper-asked-in  {
	padding-left: 10px;
    display: inline;
    float: left;
}

.paper-asked-in .asked-in {
	color: #959fad;
}

.paper-asked-in .comp-name {
	color: #5b9bd1;
}
.paper-asked-in .paper-time{
	 display: table;
}

.paper-asked-in .paper-time i{
	 color: #5b9bd1;
}

.progress-bar {
  transition-duration: 3s;
}

.maragin-rt-60 {

	margin-right: 160px !important;
}

.margin-bt-10 {
	margin-bottom: 10px;
}

.common-quiz {
	float: left;
}

.bb-dashed {
	border-bottom:  1px dashed rgba(0,0,0,.125);
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
						<!-- <li class="header-notification-li"><div class="notification-box"> <span class="badge">7</span> <a href="#"><i class="fa fa-tasks" aria-hidden="true"></i></a></div></li> -->
						<li class="user-box header-notification-li">
							<div class="dropdown">
								<a href="#" class="dropdown-toggle user-anchor" data-toggle="dropdown"><img src="<c:url value="/resources/images/avtar1.png" />" alt="user-image" class="img-circle">
									<span class="header-user-name">Sunil Jaiswal </span><i class="fa fa-angle-down"></i>
								</a> 
								<div class="dropdown-menu">
							      <div class="profile-drop">
							      	<ul>
							      		<li><a href="setting"><i class="fa fa-wrench" aria-hidden="true"></i> Setting</a></li>
							      		<li><a href="profile"><i class="fa fa-user" aria-hidden="true"></i> Profile</a></li>
							      		<li><a href="logout"><i class="fa fa-sign-out" aria-hidden="true"></i>Logout</a></li>
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
				<ul class="nav nav-tabs" id="leftmenutab">
					<li>
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
					<li><a data-toggle="tab" href="#dashboard" class="active show"><span> <i class="fa fa-home" aria-hidden="true"></i></span><span> Dashboard</span></a></li>
					<li><a data-toggle="tab" href="#newsfeeds"><span> <i class="fa fa-newspaper-o" aria-hidden="true"></i></span><span> News feeds</span></a></li>
					<li><a data-toggle="tab" href="#findjobs"><span> <i class="fa fa-search" aria-hidden="true"></i></span><span> Find jobs</span></a></li>
					<li><a data-toggle="tab" href="#shorttricks"><span> <i class="fa fa-plane" aria-hidden="true"></i></span><span> Short tricks</span></a></li>
					<li><a data-toggle="tab" href="#askaquestion"><span> <i class="fa fa-question-circle" aria-hidden="true"></i></span><span> Ask a question</span></a></li>
					<li><a data-toggle="tab" href="#shareexperience"><span> <i class="fa fa-shopping-bag" aria-hidden="true"></i></span><span> Share an experience</span></a></li>
					<li><a data-toggle="tab" href="#placementpapers"><span> <i class="fa fa-files-o" aria-hidden="true"></i></span><span> Placement papers</span></a></li>
					<li><a data-toggle="tab" href="#trackstatus"><span> <i class="fa fa-spinner" aria-hidden="true"></i></span><span> Track status</span></a></li>
					<li><a data-toggle="tab" href="#tutorials"><span> <i class="fa fa-video-camera" aria-hidden="true"></i></span><span> Tutorials</span></a></li>
					<li><a data-toggle="tab" href="#quiz"><span> <i class="fa fa-television" aria-hidden="true"></i></span><span> Quiz</span></a></li>
				</ul>
			</div>
		</div>
		<div class="content-container">
			<div class="container-fluid">
  				<!-- Main container code goes here starts-->
  					<div class="tab-content">
					    <div class="tab-pane fade in active show maragin-rt-60" id="dashboard"><%@ include file = "dashboard.jsp" %></div>
					    <div class="tab-pane fade maragin-rt-60" id="newsfeeds"><%@ include file = "newsfeeds.jsp" %></div>
					    <div class="tab-pane fade maragin-rt-60" id="findjobs"><%@ include file = "findjobs.jsp" %></div>
					    <div class="tab-pane fade maragin-rt-60" id="shorttricks"><%@ include file = "shorttricks.jsp" %></div>
					    <div class="tab-pane fade maragin-rt-60" id="askaquestion">...Content...</div>
					    <div class="tab-pane fade maragin-rt-60" id="shareexperience"><%@ include file ="shareexperience.jsp" %></div>
					    <div class="tab-pane fade maragin-rt-60" id="placementpapers"><%@ include file = "placementpapers.jsp" %></div>
					    <div class="tab-pane fade maragin-rt-60" id="trackstatus"><%@include file="trackstatus.jsp" %></div>
					    <div class="tab-pane fade maragin-rt-60" id="tutorials">...Content...</div>
					    <div class="tab-pane fade maragin-rt-60" id="quiz"><%@include file="quiz.jsp" %></div>
					</div>
  				<!-- Main container code goes here ends-->
			</div>
		</div>
	</div>
	
	<%@ include file = "common_likelist.jsp" %>
	<%@ include file = "common.jsp" %>
	<%@ include file = "onlineusers.jsp" %>
</body>
</html>


<!-- 
https://blackrockdigital.github.io/startbootstrap-sb-admin/ 
https://colorlib.com/wp/free-bootstrap-admin-dashboard-templates/
http://gambolthemes.net/html/workwise/index.html
http://preview.themeforest.net/item/friend-finder-social-network-html5-template/full_screen_preview/18711273?ref=cirvitis&clickthrough_id&redirect_back=true
https://colorlib.com/etc/bwiz/colorlib-wizard-4/index.html
https://colorlib.com/polygon/sufee/index.html
-->