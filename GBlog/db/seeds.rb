# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Post.create(:author=>"Roberto Machado",:author_desc=>"Founded Group Buddies in 2011. Lean Startup Minho founder. Minho.rb founder.",:author_twitter=>"rmdgb",:author_photo=>"robertomachado.png",:post_title=>"Game On! RubyConf Portugal is back in 2015",:post_date=>"27/02/2015",:post_text=>"We're ready to announce that the 2nd edition of RubyConf Portugal is coming and it's going to be bigger, bolder and awesome-er!

A long time passed since the day that we decided to create the very first RubyConf Portugal. Since then we worked tirelessly to make sure that, with the first edition, we'd build the foundations for a consistent yearly conference about Ruby in Portugal. By the reactions from speakers and attendees, it seems we've hit a home run:",:post_source=>"development.png")

Post.create(:author=>"Miguel Palhas",:author_desc=>"Loves programming since ever. Is obsessed with optimizing and automating everything he does. Joined GB for a chance to keep doing what he does best, while becoming more involved in the open source world.",:author_twitter=>"naps62",:author_photo=>"miguelpalhas.png",:post_title=>"Getting Hooked",:post_date=>"18/02/2015",:post_text=>" said it before and I'll say it again, several times: Automation is awesome.

I previously showed an example of how you can automate the whole process of merging pull requests.

Now I'd like to share another git tip that helps me speed up my workflow. This one is about git hooks.",:post_source=>"development.png")