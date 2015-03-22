# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
icon1 = Icon.create(image: 'icon1.png')
icon2 = Icon.create(image: 'icon2.png')

a1 = Author.create(first_name: 'Roberto', last_name: 'Machado', photo: 'roberto.png', about: 'Founded Group Buddies in 2011. Learn Startup Minho founder. Minho.rb founder.')
a2 = Author.create(first_name: 'Luis', last_name: 'Zamith', photo: 'zamith.png', about: 'Founder and Developer at Group Buddies where he tries to improve the web one website at a time. Loves the tech world, especially applicational design, but can be seen, on occasion, working on user experience problems or even system administration. His motto is "Start small or not at all".')
a3 = Author.create(first_name: 'Miguel', last_name: 'Palhas', photo: 'palhas.png', about: 'Loves programming since ever. Is obsessed with optimizing and automating everything he does. Joined GB for a chance to keep doing what he does best, while becoming more involved in the open source world.')

Article.create(
  title: 'Game Oh! RubyConf Portugal is back in 2015',
  post: "Braga can be described as an ancient, historic city, filled with young people, determined to make a difference. We have great tech companies here, with major international relevance, as well as young companies and startups.

We are aware of the challenge that it represents to top last year's edition. Creating such an ambitious conference is far from being an easy task, but we're confident that the portuguese ruby community will again embrace this event as a way to unite itself and put Portugal on the map, not only amongst ruby conferences, but also amongst the OSS community in general.",
  date: '27-02-2015',
  author: a1,
  icon: icon1
)

Article.create(
  title: 'Getting Hooked',
  post: "I liked the idea of maintaining a plot with the evolution of our projects, but I definitely can't rely on myself to remember to run metric_fu periodically. So I built a hook that does it for me.

But for this case, doing that after every commit was not an option. That would end up plotting data about my feature branches, which did not reflect the state of the final code.",
  date: '18-02-2015',
  author: a3,
  icon: icon1
)

Article.create(
  title: 'Accessibility Matters',
  post: "I am privileged. I am able to navigate the web in all it's glory, with all the amazing animations, crazy stuff happening on scrolls, great videos and the latest style for input fields.

The stage of the product is also a factor in this. Building a prototype, an MVP or improving an area of a website used by millions of people daily, have very different constraints and also very different amounts of information available about the target audience. In my opinion, there is no excuse for at least having this in mind in the conceptual stage of your product.",
  date: '02-02-2015',
  author: a2,
  icon: icon1
)

Article.create(
  title: 'Lessons Learned from our Winter Company Retreat',
  post: "We had our first offsite experience in May when we drove to the beautiful Gerês and spent 3 days blowing off steam, having fun and talking lightly about some of our projects.

This time we wanted more. We decided we wanted to spend some time working on something meaningful, that would make a real impact in our daily lives. So we decided to go for a three part program, where we'd have time to: have some fun and practice some sports, discuss our past and our future, and finish off with a hackathon. I'd like to share some thoughts about each of these parts in the hope that it might come in handy when you’re planning your company’s next retreat.",
  date: '19-12-2014',
  author: a1,
  icon: icon2
)
