<div class="row">

	<!-- left panel -->
	<div class="col-lg-8">
	
		<!--  Create a new post goes here -->
		<div class="card create-post add-box-shadow">
		  <div class="card-body">
			   <div class="post-u-img">
			  	<img src="<c:url value="/resources/images/avtar1.png" />" alt="user-image"  class="img-circle" style="width: 60px; margin-right: 10px;">
			   </div>
			  	<div class="post-editor editable" id="post-editor-evnt" contenteditable="true" data-placeholder='Your post goes here...'>
			    	
			    </div>
			    <img src="" id="post-upload-img-preview" width="500px" style="display: none;" />
		  </div>
		  <div class="card-footer create-post-footer">
		    	<label for="file-input">
		    		<span class="file-upload-icon">
			        	<i class="fa fa-camera" aria-hidden="true"></i>
			        </span>
			    </label>
			    <input id="file-input" data-destination="post-upload-img-preview" class="file-btn" type="file"/>
			    <button type="button" class="btn btn-primary custom-btn pull-right create-post-sub-btn">Post</button>
		  </div>
		</div>
		<!-- Create a new post ends here -->
		
		<!--  news feeds goes here -->
		
		
		<div class="card news-feeds-cards add-box-shadow ">
		  <div class="card-body">
			   <div class="feeds-u-img">
			  		<img src="<c:url value="/resources/images/avtar1.png" />" alt="user-image"  class="img-circle" style="width: 60px; margin-right: 10px;">
			   </div>
			  	<div class="news-feeds-u-details">
			    	<span class="news-feeds-u-name">Sunil Jaiswal </span>
			    	<span class="news-feeds-u-qua text-muted"> Egnineering Student</span>
			    	<span class="news-feeds-u-qua text-muted"> 5d</span>
			    </div>

			    <div class="news-feeds-settings">
			    	<div class="dropleft">
					    <span class="dropdown-toggle" data-toggle="dropdown" >
					    	<i class="fa fa-ellipsis-h" aria-hidden="true"></i>
					    </span>
					    <div class="dropdown-menu setting-items">
						    <a class="dropdown-item" href="#"><i class="fa fa-floppy-o" aria-hidden="true"></i> Save</a>
						    <a class="dropdown-item" href="#"><i class="fa fa-flag" aria-hidden="true"></i> Report</a>
						    <a class="dropdown-item" href="#"><i class="fa fa-eye-slash" aria-hidden="true"></i> Hide post</a>
						    <a class="dropdown-item" href="#"><i class="fa fa-ban" aria-hidden="true"></i> Unfollow</a>
						</div>
					</div>
				</div>
			    
			    <div class="news-feeds-content">
			    	I was trying to post this but could not; A constructor estimates that 3 people can paint Mr khan's house in 4 days. If he uses 4 people instead of 3,how long will they take to complete the job? A constructor estimates that 3 people can paint Mr khans house in 4 days. If he uses 4 people instead of 3,how long will they take to complete the job?
			    </div>
			    
			    <div class="news-feeds-content-img">
			    
			    	<img src="<c:url value="/resources/images/q1.jpg" />" alt="user-image" style="width: 200px;">
			    	
			    </div>
			    
		  </div>
		  <div class="card-footer news-feeds-footer">
		  	<div class="inner-footer">
				<div class="likes-comments-count">
					<!-- <span class="likes" data-toggle="modal" data-target="#post-like-modal"><strong>10 likes</strong></span> <span style="font-size: 6px;"><i class="fa fa-minus" aria-hidden="true"></i></span> <span><strong>12 comments</strong></span> -->
					<span class="likes pointer" data-toggle="modal" data-target="#post-like-modal">10 likes</span>
					<span style="font-size: 6px;"><i class="fa fa-minus" aria-hidden="true"></i></span>
					<span class="comments pointer" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false">12 comments</span>
				</div>
				<div class="likes-comments text-muted">
					<span class="feeds-like"><i class="fa fa-thumbs-o-up" aria-hidden="true"></i> <span class="feeds-like-label">Like</span> </span>
					<span class="feeds-comments" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false"><i class="fa fa-comments-o" aria-hidden="true"></i> <span class="feeds-comment-label">Comment</span></span> 
				</div>
			</div>
				<div class="collapse" id="collapseExample">
				  <div class="card card-body news-feeds-comments">
				  		<%@ include file = "common_comment.jsp" %>
				  </div>
				</div>
		  </div>
		</div>
		<!--  news feeds ends here -->
	</div>
	<!-- left panel ends -->
	
	<!-- right panel starts -->
	<div class="col-lg-4 review-panel">
			
		<!-- post review or suggestion -->
		<div class="card create-suggetions add-box-shadow">
		  <div class="card-body">
			   <div class="post-u-img">
			  	<img src="<c:url value="/resources/images/avtar1.png" />" alt="user-image"  class="img-circle" style="width: 30px; margin-right: 10px;">
			   </div>
			   
			  	<div class="suggetion-editor" id="suggetion-editor-event" contenteditable="true" data-placeholder='Your review goes here...'>
			    	
			    </div>
			   	 <div class="row rating-row">
					<div class="rating">
				      <input type="radio" id="star10" name="rating" value="5" /><label for="star10" title="5">5 stars</label>
				      <input type="radio" id="star9" name="rating" value="4" /><label for="star9" title="4">4 stars</label>
				      <input type="radio" id="star8" name="rating" value="3" /><label for="star8" title="3">3 stars</label>
				      <input type="radio" id="star7" name="rating" value="2" /><label for="star7" title="2">2 stars</label>
				      <input type="radio" id="star6" name="rating" value="1" /><label for="star6" title="1">1 star</label>
				    </div>
			   </div>
			   <div class="border-bottom">
			   </div>
			
		  </div>
		<div class="card-footer">
		
			<!-- repeat -->		
			<div class="users-review-box">
				<span>
					<span class="pull-left">
	                    <img src="/web/resources/images/avtar1.png" width="40px" class="img-circle" alt=""> 
	                 </span>
                </span>
                <div class="review-body clearfix">
                     <div class="">
                         <strong class="review-u-name">Jack Sparrow - </strong> <span class="rating-value">4 <i class="fa fa-star" aria-hidden="true"></i></span>
                         <small class="pull-right text-muted">
                             <i class="fa fa-clock-o fa-fw"></i> 12 mins ago
                         </small>
                     </div>
                     <p>
                        nice work!!! keep it up
                     </p>
                </div>
              </div>
             <!-- repeat ends -->	
             <div class="users-review-box">
				<span>
					<span class="pull-left">
	                    <img src="/web/resources/images/avatar/avtar1.png" width="40px" class="img-circle" alt=""> 
	                 </span>
                </span>
                <div class="review-body clearfix">
                     <div class="">
                         <strong class="review-u-name">Akshay Kumar - </strong> <span class="rating-value">1 <i class="fa fa-star" aria-hidden="true"></i></span>
                         <small class="pull-right text-muted">
                             <i class="fa fa-clock-o fa-fw"></i> 12 mins ago
                         </small>
                     </div>
                     <p>
                        Can be more improved
                     </p>
                </div>
              </div>
              <div class="users-review-box">
				<span>
					<span class="pull-left">
	                    <img src="/web/resources/images/avatar/avtar2.png" width="40px" class="img-circle" alt=""> 
	                 </span>
                </span>
                <div class="review-body clearfix">
                     <div class="">
                         <strong class="review-u-name">Raj Jain - </strong> <span class="rating-value">2 <i class="fa fa-star" aria-hidden="true"></i></span>
                         <small class="pull-right text-muted">
                             <i class="fa fa-clock-o fa-fw"></i> 12 mins ago
                         </small>
                     </div>
                     <p>
                        nice work!!! keep it up
                     </p>
                </div>
              </div>
              <div class="users-review-box">
				<span>
					<span class="pull-left">
	                    <img src="/web/resources/images/avatar/avtar3.png" width="40px" class="img-circle" alt=""> 
	                 </span>
                </span>
                <div class="review-body clearfix">
                     <div class="">
                         <strong class="review-u-name">Sahil Nadani - </strong> <span class="rating-value">5 <i class="fa fa-star" aria-hidden="true"></i></span>
                         <small class="pull-right text-muted">
                             <i class="fa fa-clock-o fa-fw"></i> 12 mins ago
                         </small>
                     </div>
                     <p>
                        nice work!!! keep it up
                     </p>
                </div>
              </div>	
		</div>
		</div>
	<!-- post review or suggestion ends here -->
	
		
	</div>
	<!-- right panel ends -->
	
	<!--  image preview starts-->
	  <div class="modal fade" id="image-preview-modal">
	    <div class="modal-dialog">
	      <div class="modal-content">
	      
	        <!-- Modal Header -->
	        <div class="modal-header">
	          <span class="custom-cross" data-dismiss="modal">
	        	<i class="fa fa-times-circle" aria-hidden="true"></i>
	          </span>
	        </div>
	        
	        <!-- Modal body -->
	        <div class="modal-body">
	         
	         	<img src="" id="make-me-larg">
	          
	        </div>
	        
	      </div>
	    </div>
	  </div>
	<!-- image preview ends-->
	
</div>
