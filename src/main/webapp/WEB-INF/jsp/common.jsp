<div class="chat-popup1">
	  
	  
	  
</div>

<noscript type="text/x-template" id="chat-popup-container">
	<div class="chat-popup" id="myForm_<@=id@>" style="position: fixed;bottom: 0;right: <@=right@>px;width: 350px;">
	  <div class="card">
	  <div class="card-header pointer">
	    <span class="chat-u-img"><img src="<c:url value="/resources/images/avatar/avtar3.png" />" alt="user-image"  class="img-circle"></span>
	    <div class="header-user-body">
	    	<div class="chat-header-left">
	    		<span class="chat-u-name"> <@=name@></span>
	    		<span class="message-count text-muted">1234 Messages</span>
	    	</div>
	    	<div class="chat-header-right">
	    		<span class="cross pointer text-muted crossme" data-id="<@=id@>"> <i class="fa fa-times" aria-hidden="true"></i></span>
	    	</div>	
	    </div>
	  </div>
	  <div class="card-body">
	  	<div class="message-container">
	  		<ul>
	  			<li class="recieve">
	  				<img src="<c:url value="/resources/images/avatar/avtar3.png" />" alt="user-image"  class="img-circle">
	  				<p>Hello, I am Sumit Mishra! How are you doing now a days after a long time</p>
	  			</li>
	  			<li class="sent">
	  				<img src="<c:url value="/resources/images/avatar/avtar4.png" />" alt="user-image"  class="img-circle">
	  				<p class="pull-right">Hello, I am Sunil jaiswal! I am fine thanks... yeah it's been long time</p>
	  			</li>
	  		</ul>
	  	</div>
	    <!-- <h5 class="card-title">Special title treatment</h5>
	    <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
	    <a href="#" class="btn btn-primary">Go somewhere</a> -->
	  </div>
	  <div class="message-compose-container">
	   	<div class="message-compose">
	   		<input type="text" class="msg-input" placeholder="Your message goes here...">
	   		<div class="compose-right pull-right">
	   			<span class="attach pointer">
	   			
					<label for="file-input">
		    		<span class="file-upload-icon">
			        		<i class="fa fa-paperclip" aria-hidden="true"></i>
			        </span>
			    </label>
			    <input id="file-input" data-destination="post-upload-img-preview" class="file-btn" type="file"/>
			    	   			
	   				
	   			</span>
	   			<span class="send pointer">
		   			<i class="fa fa-paper-plane" aria-hidden="true"></i>
	   			</span>
	   		</div>
	   	</div>
	  </div>
	</div>
	  
	</div>
</noscript>