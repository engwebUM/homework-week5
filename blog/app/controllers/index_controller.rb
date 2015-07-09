class IndexController < ApplicationController
	def index
    	@message1 = "We're ready to announce that the 2nd edition of RubyConf Portugal is coming and it's going to be bigger, bolder and awesome-er! A long time passed since the day that we decided to create the very first RubyConf Portugal. Since then we worked tirelessly to make sure that, with the first edition, we'd build the foundations for a consistent yearly conference about Ruby in Portugal. By the reactions from speakers and attendees, it seems we've hit a home run..."
		@message2 = "There's only so much you can do in life. Your time is limited, as well as your focus and your energy... As a designer, it's my job to study, understand and work out the best possible solution for any particular problem. Now, I have two options: I can spend my life designing meaningless websites for copy-cat companies, focused solely on the next 'buck', and that will have no real impact in the world and our daily lives, or I can dedicate my time to design innovative and disruptive products, that intend to leave a footprint in the world."
  	end
end
