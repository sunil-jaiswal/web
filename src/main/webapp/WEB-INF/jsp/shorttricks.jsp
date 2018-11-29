<div class="row" style="margin-right: 160px;">
	<!--  left sidebar -->
	<div class="tircks-leftbar col-lg-12">
	
		<div class="tircks-leftbar-main">
			
			<!-- create tricks begins-->
			<div class="ticks-topbar">
				<div class="tricks-uploader-pic">
					<img src="<c:url value="/resources/images/avtar1.png" />" alt="user-image"  class="img-circle" style="width: 50px; margin-right: 10px;">
				</div>
				<div class="tricks-uploader-methods">
					<button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#post-trick-modal">Post a trick</button>
				</div>
			</div>
			<!-- create tricks ends-->

			<div class="ticks-posts">
				
				<div class="trick-wrapper">
					
					<div class="card">
					  <div class="card-body">
						   <div class="users-trick-box">
								<span>
									<span class="pull-left">
					                    <img src="/web/resources/images/avtar1.png" width="40px" class="img-circle" alt=""> 
					                 </span>
				                </span>
				                <div class="tricks-body clearfix">
				                     <div class="">
				                         <strong class="trick-u-name">Jack Sparrow </strong>
				                         <small class="pull-right text-muted">
				                             <i class="fa fa-clock-o fa-fw"></i> 12 mins ago
				                         </small>
				                         <span class="trick-u-des text-muted">
				                         		<span class="trick-u-designation"><i class="fa fa-user" aria-hidden="true"></i> Software engineer</span> 
				                         		<span class="trick-u-location"><i class="fa fa-location-arrow" aria-hidden="true"></i> India</span>
				                         </span>
				                     </div>
				                </div>
				                
				                <div class="tricks-content">
				                	<p>
				                		Let me explain this rule by taking examples
										1.	352*11 = 3---(3+5)---(5+2)---2 = 3872
										Means insert the sum of first and second digits, then sum of second and third digits between the two terminal digits of the number
										2.	213*11 = 2---(2+1)---(1+3)---3 = 2343 
				                	</p>
				                </div>
	              			</div>
					  </div>
					  <div class="card-footer tricks-footer">
					  <div class="tricks-inner">
					  	<span class="text-muted">
						    <span  style="margin-right: 10px; cursor: pointer;" data-toggle="modal" data-target="#post-like-modal"><i class="fa fa-thumbs-up" aria-hidden="true"></i> Like (72)</span>
						    <span style="cursor: pointer;" data-toggle="collapse" data-target="#tricks-comment" aria-expanded="false"><i class="fa fa-comments" aria-hidden="true"></i> Comment (5)</span>
						 </span>
						</div>
						 <div class="collapse" id="tricks-comment">
						  <div class="card card-body tricks-comment-comments">
						  		<%@ include file = "common_comment.jsp" %>
						  </div>
						</div>
						 
					  </div>
					</div>
					
				</div>
				
			</div>
					
		</div>
	
	</div>
	<!--  left sidebar ends -->
	
	<!--   right sidebar 
	<div class="tircks-rightbar col-lg-6 col-md-4">
	
	
	</div>
	 right sidebar ends -->
</div>

<!-- right users  -->
	<div class="online-users-container">
		<div class="chat-list-div">
			<ul>
				<li>
					<div style="position: relative;">
						<a href="">
							<span><img src="<c:url value="/resources/images/avatar/avtar5.png" />" alt="user-image"  class="img-circle"></span>
								<span class="chat-user-name">Sunil Jaiswal</span>
								<span class="chat-bullet"> <i class="fa fa-circle" aria-hidden="true"></i></span>
						</a>
					</div>
				</li>
				
				<li>
					<div style="position: relative;">
						<a href="">
							<span><img src="<c:url value="/resources/images/avatar/avtar2.png" />" alt="user-image"  class="img-circle"></span>
								<span class="chat-user-name">Sunil Jaiswal</span>
								<span class="chat-bullet"> <i class="fa fa-circle" aria-hidden="true"></i></span>
						</a>
					</div>
				</li>
				
				<li>
					<div style="position: relative;">
						<a href="">
							<span><img src="<c:url value="/resources/images/avatar/avtar3.png" />" alt="user-image"  class="img-circle"></span>
								<span class="chat-user-name">Vishal Porwal</span>
								<span class="chat-bullet"> <i class="fa fa-circle" aria-hidden="true"></i></span>
						</a>
					</div>
				</li>

				<li>
					<div style="position: relative;">
						<a href="">
							<span><img src="<c:url value="/resources/images/avatar/avtar4.png" />" alt="user-image"  class="img-circle"></span>
								<span class="chat-user-name">Abhinav Sen</span>
								<span class="chat-bullet"> <i class="fa fa-circle" aria-hidden="true"></i></span>
						</a>
					</div>
				</li>
			
			</ul>
		</div>
	</div>
<!-- right users -->

<!-- Post a trick modal -->


<div class="chat-popup" id="myForm">
  <form action="/action_page.php" class="form-container">
    <h1>Chat</h1>

    <label for="msg"><b>Message</b></label>
    <textarea placeholder="Type message.." name="msg" required></textarea>

    <button type="submit" class="btn">Send</button>
    <button type="button" class="btn cancel" onclick="closeForm()">Close</button>
  </form>
</div>

<!-- Modal -->
<div class="modal fade" id="post-trick-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Post a trick</h5>
        <span class="custom-cross" data-dismiss="modal">
	        	<i class="fa fa-times-circle" aria-hidden="true"></i>
	    </span>
      </div>
      <div class="modal-body">
       	<form action="/examples/actions/confirmation.php" method="post">
       		
       		<div class="form-group">
			    <select class="form-control" id="exampleFormControlSelect1" name="roleId" data-custom-input="select">
			      <option value="0">Select category</option>
			      <option value="1">Maths</option>
			      <option value="2">English</option>
			      <option value="2">Programming</option>
			    </select>
		   </div>
		  
	        <div class="form-group">
			    <textarea class="form-control" id="exampleTextarea" placeholder="Explanation" rows="3"></textarea>
			</div>
	    </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary btn-sm" data-dismiss="modal">Discard</button>
        <button type="button" class="btn btn-primary btn-sm">Save</button>
      </div>
    </div>
  </div>
</div>

<!-- Post a trick modal ends -->
