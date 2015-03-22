class PostsController < ApplicationController
	def index
	    @posts = Post.all
	        
		@menu = "<li>
			         <a href="">All</a> /
			    </li>   
			    <li>
			         <a href="">Development</a> /
			    </li>
			    <li>
			         <a href="">Design</a> /
		        </li>
	            <li>
 		            <a href="">Business</a> / 
 		        </li>
			    <li>
			        <a href="">Sys Admin</a> /
			    </li>
			    <li>
			        <a href="">Miscellanea</a> /
			    </li>
			    <li>
			        <a href="">Archive</a>
			    </li>"
	end
end