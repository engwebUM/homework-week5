# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
a1 = Author.create(name: 'Roberto Machado',
                   bio: 'Founded Group Buddies in 2011. Lean Startup Minho founder. Minho.rb founder.',
                   photo: 'roberto-machado.png',
                   twitter: 'https://twitter.com/rmdgb')
a2 = Author.create(name: 'Miguel Palhas',
                   bio: 'Loves programming since ever. Is obsessed with optimizing and automating everything he does. Joined GB for a chance to keep doing what he does best, while becoming more involved in the open source world.',
                   photo: 'miguel-palhas.png',
                   twitter: 'https://twitter.com/naps62')
a3 = Author.create(name: 'João Ferreira',
                   bio: 'Believes that Design is not about mastering a tool, but about mastering people. Knows some of Godfather\'s quotes by heart.',
                   photo: 'joao-ferreira.png',
                   twitter: 'https://twitter.com/jferreiradzn')
a4 = Author.create(name: 'Luis Zamith',
                   bio: 'Founder and Developer at Group Buddies where he tries to improve the web one website at a time. Loves the tech world, especially applicational design, but can be seen, on occasion, working on user experience problems or even system administration. His motto is “Start small or not at all”.',
                   photo: 'luis-zamith.png',
                   twitter: 'https://twitter.com/zamith')


c1 = Category.create(name: 'Development',
                     photo: 'development.png')
c2 = Category.create(name: 'Design',
                     photo: 'design.png')
c3 = Category.create(name: 'Business',
                     photo: 'business.png')
c4 = Category.create(name: 'Sys Admin',
                     photo: 'sys-admin.png')
c5 = Category.create(name: 'Miscellanea',
                     photo: 'miscellanea.png')


Post.create(title: 'This is Our Story',
            text: '<p>We have been wanting to bring our blog to life for a while now, and that day has finally come. Let me take this opportunity to tell you how we got to where we are today.</p>
            <p>GB started almost two years ago as a product-based company, with one goal in mind: develop the best content management system in the world.
            We envisioned this product would change the way companies handled their internal and external communications, thus improving their overall productivity and profit. </p>
            <p>Soon enough, we realized that it wouldn&#39;t be easy to market such a product, for the competition is fierce and sales were not keeping pace with our expenses. </p>
            <p><strong>That was our first hard-learnt lesson.</strong></p>
            <p>You don&#39;t know what your customers really want, until you talk to them and understand what they feel as an actual pain.<br>
            The second one, was that (surprisingly enough) the lack of revenue is a major issue.</p>
            <p>Up to that moment we were a company called <em>Group Buddies</em>, selling one product called Handy Ant. Since then, the company&#39;s name was the only thing that remained the same.</p>
            <p>We went through a complete makeover, from a product-based company to a service-oriented team. Since we always believed in bootstrapping and needed income, this was a natural step for us. Therefore, the only alternative we had was to accept that we would become, for the time being, a service-oriented team, providing web development consultancy.</p>
            <p>Twelve months have gone by since that decision and I&#39;m thrilled to say that it was the best decision we ever made. </p>
            <p><strong>We were very lucky to work with excellent clients, with which we passionately collaborate in amazing projects.</strong></p>
            <p>This last year made us learn and evolve a lot in terms of product development, design processes, development practices, and more. If twelve months ago everything changed except our name, I can now say that it was definitely for the better.<br>
            As a team, we have never been as passionate and knowledgeable as today, and the feeling is that we will get even better, a day at a time.</p>
            <p><strong>This has been a fantastic ride, with a fantastic team, working with great clients, in exciting projects. Nevertheless, we hope this was just the beginning of a much longer and prosperous adventure.</strong></p>
            <p>We have a lot more to share, so stay tuned.<br>
            You will not regret it.</p>
            <p>Roberto Machado<br>
            Founder, <em>Group Buddies</em></p>',
            author: a1,
            category: c5,
            created_at: '2013-10-14')

Post.create(title: 'Why Provisioning Matters',
            text: '<p>If you were ever in charge of configuring a web server, you must know how painful it can be sometimes. During your first learning days, you probably spent an awful lot of time SSH&#39;ing into the server, trying out something you just found online. It probably ended up being a slow trial-and-error process before you got your first server up and running.</p>
            <p>When I was at that point myself, I often thought &quot;there&#39;s probably a better way to do this&quot;. And obviously, there is.</p>
            <h1>What&#39;s the problem?</h1>
            <p>The SysAdmin&#39;s best friend is the one and only, SSH. Almost anything you do depends on it.
            And when searching the web for tutorials on how to configure a web server, a lot of the results present a similar process: SSH to the server, and do everything manually.
            This is an indication that this is still one of the most disregarded topics when it comes to best practices.</p>
            <p>Actually, if you think about it, using SSH is the SysAdmin&#39;s equivalent of a <a href="https://en.wikipedia.org/wiki/Code_smell">code smell</a>. You&#39;re probably repeating yourself over and over (especially if you&#39;re doing the same thing across multiple servers).</p>
            <p>This is exactly where provisioning tools can come into play.</p>
            <h1>Provisioning Tools</h1>
            <p>A provisioning tool helps you set up a server, by letting you write a script or manifest file with all the specifications you want.
            One of these tools in particular, <a href="https://puppetlabs.com/">Puppet</a>, follows an approach which I find really interesting: it makes you describe how the final state of the server should be, rather than the steps required to get there.</p>
            <p>A small example of how a Puppet manifest file looks like:</p>
            <div class="highlight"><pre><span class="n">package</span> <span class="p">{</span> <span class="s2">&quot;httpsd&quot;</span><span class="p">:</span>
              <span class="k">ensure</span> <span class="o">=&gt;</span> <span class="n">installed</span><span class="p">,</span>
            <span class="p">}</span>
            </pre></div>
            <p>This small manifest ensures that a package called &quot;httpsd&quot; should be installed on the system. Internally, Puppet must know what a package is, and how to find and install one.</p>
            <p>Files are just as easy to manage:</p>
            <div class="highlight"><pre><span class="n">file</span> <span class="p">{</span> <span class="s2">&quot;/home/deploy/some_file&quot;</span><span class="p">:</span>
              <span class="k">ensure</span> <span class="o">=&gt;</span> <span class="n">present</span><span class="p">,</span>
              <span class="n">owner</span>  <span class="o">=&gt;</span> <span class="s2">&quot;deploy&quot;</span><span class="p">,</span>
              <span class="n">group</span>  <span class="o">=&gt;</span> <span class="s2">&quot;deploy&quot;</span><span class="p">,</span>
              <span class="n">mode</span>   <span class="o">=&gt;</span> <span class="mo">0644</span><span class="p">,</span>
            <span class="p">}</span>
            </pre></div>
            <p>The language is pretty much self-explanatory. A file called &quot;some_file&quot; must be present at that path, and belong to the user &quot;deploy&quot;, with the given permissions.</p>
            <p>If all those conditions are already true (i.e., the file already exists when you try to apply the Puppet manifest), nothing is actually done.</p>
            <p>This state-driven language, in addition to the amount of community-contributed Puppet modules (usually found at <a href="https://forge.puppetlabs.com/">PuppetForge</a> or <a href="https://github.com/puppetlabs">Github</a>) provide a powerful tool to handle provisioning.</p>
            <p>It also becomes easier to start noticing patterns, and dealing with them by writing generic manifests for all your servers. It&#39;s much easier to do that through Puppet than having your own custom scripts, which are more likely to break due to some edge case you didn&#39;t think of. And that&#39;s exactly what I did.</p>
            <h1>Provisioning, the GB Way</h1>
            <p>At Group Buddies, the current toolset for our Rails deployment consists of:</p>
            <ul>
            <li>A Web server with <strong>RVM</strong> and <strong>PostgreSQL</strong> (and whatever else each app needs, such as Redis)</li>
            <li>Puma as the web server</li>
            <li>Capistrano</li>
            <li>A multi-stage setup (usually two instances of each app).</li>
            </ul>
            <p>In an attempt to standardize our deployment process, I started putting together all the common parts in a <a href="https://github.com/naps62/gb-puppet">Puppet module</a> and a <a href="https://github.com/groupbuddies/gb-provisioning">test app</a>.</p>
            <p>I tried to follow a rule of thumb for this. Whenever I have to use SSH for anything, I first think about how to eliminate that need, either by writing a new Puppet rule, or by doing the same thing through Capistrano, to ensure consistency.</p>
            <p>There&#39;s still work to be done, but the first solid results are here. Right now, a simple Puppet manifest such as this...</p>
            <div class="highlight"><pre><span class="vg">$data</span> <span class="o">=</span> <span class="n">hiera</span><span class="p">(</span><span class="s1">&#39;gb-provisioning&#39;</span><span class="p">)</span>
            <span class="k">class</span> <span class="p">{</span> <span class="n">gb</span><span class="p">:</span>
              <span class="n">ruby_version</span>    <span class="o">=&gt;</span> <span class="s1">&#39;ruby-2.0.0-p353&#39;</span><span class="p">,</span>
              <span class="n">deploy_password</span> <span class="o">=&gt;</span> <span class="s2">&quot;$data[deploy][password]&quot;</span><span class="p">,</span>
            <span class="p">}</span>
            <span class="n">gb</span><span class="o">::</span><span class="n">app</span><span class="o">::</span><span class="n">rails</span> <span class="p">{</span> <span class="s1">&#39;blog&#39;</span><span class="p">:</span>
              <span class="n">db_pass</span> <span class="o">=&gt;</span> <span class="vg">$data</span><span class="o">[</span><span class="n">production</span><span class="o">][</span><span class="n">db_password</span><span class="o">]</span><span class="p">,</span>
              <span class="n">url</span>     <span class="o">=&gt;</span> <span class="s1">&#39;blog.groupbuddies.com&#39;</span><span class="p">,</span>
            <span class="p">}</span>
            </pre></div>
            <p>... will do all of the heavy lifting of provisioning the web server, by installing and configuring everything we commonly use.</p>
            <p>The <code>gb</code> class in the beginning installs most required dependencies, creates a system user, sets up our public SSH keys, amongst other things.</p>
            <p>The <code>gb::app::rails</code> sets up a Rails application, here called &quot;blog&quot;, with all the default settings defined by the plugin and a given url and password for the PostgreSQL database. This ends up creating a database user, an Nginx entry, and sets up <a href="https://mmonit.com/monit/">Monit</a> to listen to everything related to the app.</p>
            <p>Also note that I&#39;m using <a href="https://docs.puppetlabs.com/hiera/1/">Hiera</a> to keep secret data such as passwords in a separate file.</p>
            <p>If the same machine is to be used for a new application, all it takes is a few more lines to this manifest, and applying it to the machine again.</p>
            <p>When deploying, besides the usual Capistrano workflow, all it takes is sending a restart signal to all processess registered in Monit for this application. For that, I also released <a href="https://github.com/naps62/capistrano3-monit">capistrano3-monit</a>.</p>
            <p>And all of this can be tested by using a simple Vagrant box, since the process is exactly the same.</p>
            <h1>Beyond Provisioning</h1>
            <p>A rising trend in Web Applications is the concept of Platform as a Service, where an intermediate service is used to handle all the hassle of configuring and deploying an application. It can also be called automated provisioning. Applications are usually packed in self-suficient containers, along with all of its dependencies, making them much more portable and independent, as well as eliminating most of the previously required labour.</p>
            <p>We all know of <a href="https://www.heroku.com/">Heroku</a>, which was one of the first to provide such a service.</p>
            <p>A much more recent project is <a href="https://github.com/progrium/dokku">Dokku</a>, an open-source project that allows you to create your own mini-Heroku.
            I found it to be a really interesting project, and ended up setting it up in the <a href="https://github.com/groupbuddies/gb-provisioning">deployment test application</a> I previously mentioned.</p>
            <p>It&#39;s a great tool for getting something online quickly.
            However, it is heavily dependent on <a href="https://www.docker.io/">Docker</a> which is still a very recent product, and not yet considered production-ready by their own development team.</p>
            <p>Besides, Dokku plugins are nothing more than simple bash scripts, and most of them don&#39;t seem to care all that much for tests or quality assurance. That makes them susceptible to errors such as <a href="https://github.com/Kloadut/dokku-pg-plugin/issues/6">this one</a>, where the PostgreSQL plugin temporarily broke after a new Docker release.</p>
            <p>The main point here is: PaaS is a great concept. I just feel that current open-source solutions are not yet viable when you need a more customised solution. Thus, you either pay or get a crappy experience.</p>',
            author: a2,
            category: c4,
            created_at: '2014-01-14')

Post.create(title: 'When an experiment blows your mind',
            text: '<p><a href="https://cs.groupbuddies.com/">Creators School</a>&#39;s first edition took place in September and I have to say, it was mind-blowing.</p>
            <p>When we launched this project, the assumption was that in two weeks we could teach 15 people, with or without any technical background, how to launch their own web project, including writing the code for it. We knew it wouldn&#39;t be an easy task.</p>
            <p>We divided the course in four modules: business development, product development, web design and web development. </p>
            <p>With each of these modules, we tried to introduce the necessary content to successfully go from an idea to an MVP, through a build-measure-learn cycle.</p>
            <p>Since the only real way of learning something is by practicing, the participants were divided in groups of three and asked to develop a project.</p>
            <p>It was an extraordinary experience to see how they dedicated themselves to the task at hand, how they engaged and got so far out of their comfort zones, really craving to learn and embrace this new world of web based products.</p>
            <p>The last day was dedicated entirely to evaluations. We divided it in two parts: an individual exam and a group presentation of the project they developed.</p>
            <p>This part was crucial for us since we needed a way to both evaluate their knowledge and our teaching. At the same time, we showed them we cared, since we really wanted to know if they actually learnt something, it wasn&#39;t all about the money.</p>
            <p>Now that it&#39;s all said and done, we can confidently say that this was a remarkable experience. </p>
            <p>We say this because:</p>
            <ul>
            <li>everyone had a positive score;</li>
            <li>everyone got enough knowledge to build a basic web site;</li>
            <li>every group took an idea and produced an MVP in two weeks (and way better than we expected);</li>
            </ul>
            <p>To account for the success of the course, we already got testimonials by some of this edition&#39;s participants, here is an example:</p>
            <blockquote>
            <p>At CS, I&#39;ve developed new knowledge on new methodologies and technologies that I didn&#39;t learn in the University. Recently I attended the Leadership Tournament 2013, organized by AIESEC, where I was able to apply some of the things I&#39;ve learned at CS. The end result was great and we actually won the competition!&quot;</p>
            <p><cite>- <a href="https://pt.linkedin.com/pub/celso-coutinho/67/8bb/617">Celso Coutinho</a></cite></p>
            </blockquote>
            <p>This was one hell of a ride.
            Witnessing their evolution was a really inspiring and humbling process. One we will never forget.</p>
            <p>The impact on the team was greatly noticed and teaching is something that we want to keep doing in the future.</p>
            <p>This project will have a new edition soon and I can guarantee it will be even better.</p>
            <p>If you are interested on the next edition, take some time to answer this <a href="https://groupbuddies.typeform.com/to/kGAA4F">survey</a>.</p>',
            author: a1,
            category: c3,
            created_at: '2013-10-29')

Post.create(title: 'For Makers',
            text: '<p>There&#39;s only so much you can do in life. Your time is limited, as well as your focus and your energy. </p>
            <p>As a designer, it&#39;s my job to study, understand and work out the best possible solution for any particular problem.</p>
            <p>Now, I have two options: I can spend my life designing meaningless websites for copy-cat companies, focused solely on the next &#39;buck&#39;, and that will have no real impact in the world and our daily lives, or I can dedicate my time to design innovative and disruptive products, that intend to leave a footprint in the world.</p>
            <p>This premiss stands true for designers, developers and anyone else who aches to create products that aim to empower users and step away from meaningless projects.</p>
            <p>It&#39;s understandably challenging to feel motivated on working on an app that aims to replace Instagram or Facebook (how many of these were there? I totally lost count). You feel like you&#39;re wasting your precious time and energy on something that will never pay off intellectually, will never inspire people and doesn&#39;t even attempt to. It&#39;s dull and pointless. </p>
            <p>You should aim higher. You should expect more than financial income from your work, more than a promotion and a pat on the back. You should feel inspired by what you make, by what you put out in the world. </p>
            <p>Your time is limited.</p>
            <p><br/></p>
            <h3>What can you do?</h3>
            <p>Think deeply about what excites you. What tingles your curiosity and gets you going when you&#39;re discussing it with your friends. Think of the things out there in the world right now, that perform poorly and neglect people&#39;s lives, directly or otherwise. It can be something massive, like education, health, world hunger, or something cultural but tangible, that somehow touches people, like music or literature. It can be something cool that you wish existed. </p>
            <p>There&#39;s probably a ton of things that come through your mind that you&#39;d like to improve, that you have ideas for. You just need to focus on one that you care deeply about.  </p>
            <p><br/></p>
            <h3>Where should you start?</h3>
            <p>If you can&#39;t afford to work on these kind of projects on your company, you can start on your own free time. If you don&#39;t have the full skill set needed to develop it, you can always seek help from people that relate to your idea. </p>
            <p>Sites like <a href="https://collabfinder.com/">CollabFinder</a> or <a href="https://meeet.co/">Meeet</a> are a great place to search for collaborators or even to look for some interesting projects that might grab your attention and require your skills. </p>
            <p>There&#39;s plenty of people working around mediocrity already and they&#39;re very successful at it. They don&#39;t need your help for that. Start something new, break some stuff. No one will notice you until you stretch out of your comfort zone.</p>
            <p><br/></p>
            <h3>When is the right time?</h3>
            <p>You know those people who say &#39;It&#39;s never too late&#39;? - They&#39;re wrong.</p>
            <p>Do it now, while there&#39;s still time. While you&#39;ve got the energy, the will and the determination to do it. Work on something that makes you proud, that makes you feel useful. The weight of responsibility will rest on your shoulders, it will use up your energy and drive your focus but... wasn&#39;t that the exact same feeling that led you to do what you do in the first place? </p>
            <p><br/></p>
            <p><em>P.S. If you&#39;re looking for a change of pace and want to work with people that are passionate about making great digital products, you should know that we&#39;re hiring one <a href="https://www.jobbox.io/offers/web-designer-group-buddies">designer</a> and one <a href="https://www.jobbox.io/offers/ruby-on-rails-web-developer">developer</a>.
            Also, if you&#39;re still new to the web but you&#39;re eager to learn and love a good challenge, you should check out our <a href="https://apprenticeship.groupbuddies.com">Apprenticeship Program</a>.</em></p>',
            author: a3,
            category: c2,
            created_at: '2014-12-10')

Post.create(title: 'Game On! RubyConf Portugal is back in 2015',
            text: '<p>We&#39;re ready to announce that the 2nd edition of <a href="http://rubyconf.pt/">RubyConf Portugal</a> is coming and it&#39;s going to be bigger, bolder and awesome-er!</p>
            <p>A long time passed since the day that we decided to create the <a href="https://blog.groupbuddies.com/posts/31-brace-yourselves-rubyconf-portugal-is-coming">very first</a> RubyConf Portugal. Since then we worked tirelessly to make sure that, with the first edition, we&#39;d build the foundations for a consistent yearly conference about Ruby in Portugal. By the reactions from speakers and attendees, it seems we&#39;ve hit a home run:</p>
            <blockquote class="twitter-tweet" lang="en"><p>It was <a href="https://twitter.com/rubyconfpt">@rubyconfpt</a> &#39;s first year, but you wouldn&#39;t have known. What a great conf.&#10;&#10;</p>&mdash; Steve Klabnik (@steveklabnik) <a href="https://twitter.com/steveklabnik/status/522327938377986048">October 15, 2014</a></blockquote>
            <script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>
            <blockquote class="twitter-tweet" lang="en"><p>Many thanks to <a href="https://twitter.com/groupbuddies">@groupbuddies</a>—the organizers of <a href="https://twitter.com/rubyconfpt">@rubyconfpt</a>—for creating such a special event. Hope to stay in touch with all my new friends.</p>&mdash; Erik Michaels-Ober (@sferik) <a href="https://twitter.com/sferik/status/522198371801772032">October 15, 2014</a></blockquote>
            <script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>
            <p>Again this year, this is an event envisioned by <a href="https://groupbuddies.com/">Group Buddies</a>, although everyone is invited to help us put it together. We want to join forces and unite the community, in order to create the best event we possibly can.</p>
            <h1>Where?</h1>
            <p>The conference will again take place in the beautiful city of Braga, Portugal&#39;s third biggest city, with an amazing history and a fantastic University. It was the European Youth Capital in 2012 and it is 30 mins away from Porto, the <a href="https://www.europeanbestdestinations.org/top/europe-best-destinations-2014">coolest city of Europe</a>. You probably already heard of it, at least about the Port Wine and the <a href="https://www.ana.pt/en-US/Topo/institucional/aboutANA/News/News/Pages/Porto-Airport-once-again-voted-3rd-best-in-Europe.aspx">OPO airport</a> (which, by the way, was also considered one of the best in Europe).</p>
            <p>Braga can be described as an ancient, historic city, filled with young people, determined to make a difference. We have great tech companies here, with major international relevance, as well as young companies and startups.</p>
            <h1>When?</h1>
            <p>This year it will happen on September 13 to 15.</p>
            <h1>CFP, Tickets, and more...</h1>
            <p>We will soon be launching the Call For Proposals and we will start selling tickets next month. Sponsors and partners are welcome, so we&#39;d love if you could help us spread the word. We will have a team of voluntaries which you can apply for, by emailing us at <a href="mailto:rubyconfpt@groupbuddies.com">rubyconfpt@groupbuddies.com</a>.</p>
            <p>We are aware of the challenge that it represents to top last year&#39;s edition. Creating such an ambitious conference is far from being an easy task, but we&#39;re confident that the portuguese ruby community will again embrace this event as a way to unite itself and put Portugal on the map, not only amongst ruby conferences, but also amongst the OSS community in general.</p>
            <p>We hope to see you all this fall in Braga.</p>',
            author: a1,
            category: c1,
            created_at: '2015-02-27')

Post.create(title: 'The keyword arguments falacy',
            text: '<p>Ruby 2.0 came with a feature that I love, that&#39;s the keyword arguments. They allow you to make your objects interface clearer, so you can call methods like so:</p>
            <div class="highlight"><pre><span class="n">game</span><span class="o">.</span><span class="n">play</span><span class="p">(</span><span class="n">no_of_players</span><span class="p">:</span> <span class="mi">4</span><span class="p">,</span> <span class="n">buy_in</span><span class="p">:</span> <span class="mi">1000</span><span class="p">)</span>
            </pre></div>
            <p>If you know your ruby 1.9.x you are probably saying &quot;wait a minute, I can already do that!&quot;. That&#39;s true, but the way it was handled on the method was as a hash:</p>
            <div class="highlight"><pre><span class="k">def</span> <span class="nf">play</span><span class="p">(</span><span class="n">options</span> <span class="o">=</span> <span class="p">{})</span>
              <span class="n">no_of_players</span> <span class="o">=</span> <span class="n">options</span><span class="o">[</span><span class="ss">:no_of_players</span><span class="o">]</span>
              <span class="n">buy_in</span> <span class="o">=</span> <span class="n">options</span><span class="o">[</span><span class="ss">:buy_in</span><span class="o">]</span>
            <span class="k">end</span>
            </pre></div>
            <p>As you can see, this is not as nice and fluent as ruby tries to be. With keyword arguments you can make it much cleaner:</p>
            <div class="highlight"><pre><span class="k">def</span> <span class="nf">play</span><span class="p">(</span><span class="n">no_of_players</span><span class="p">:</span> <span class="kp">nil</span><span class="p">,</span> <span class="n">buy_in</span><span class="p">:</span> <span class="kp">nil</span><span class="p">)</span>
            <span class="k">end</span>
            </pre></div>
            <p>If you&#39;re wondering about those <code>nil</code>, they are default values for when that key is not present, so if you called <code>game.play</code>, both <code>no_of_players</code> and <code>buy_in</code> would be <code>nil</code>. We can take advantage of that and add some better defaults:</p>
            <div class="highlight"><pre><span class="k">def</span> <span class="nf">play</span><span class="p">(</span><span class="n">no_of_players</span><span class="p">:</span> <span class="mi">2</span><span class="p">,</span> <span class="n">buy_in</span><span class="p">:</span> <span class="mi">100</span><span class="p">)</span>
            <span class="k">end</span>
            </pre></div>
            <p>So now when you call <code>game.play</code>, the <code>no_of_players</code> is 2 and the <code>buy_in</code> is 100. This also means that we can just code ahead not worried about having <code>nil</code> values, right? We can do something like:</p>
            <div class="highlight"><pre><span class="k">def</span> <span class="nf">play</span><span class="p">(</span><span class="n">no_of_players</span><span class="p">:</span> <span class="mi">2</span><span class="p">,</span> <span class="n">buy_in</span><span class="p">:</span> <span class="mi">100</span><span class="p">)</span>
              <span class="vi">@house_money</span> <span class="o">=</span> <span class="n">no_of_players</span> <span class="o">*</span> <span class="n">buy_in</span>
            <span class="k">end</span>
            </pre></div>
            <p>Well, no. We can&#39;t. And this is where it gets tricky. Even though the defaults will be used when the key is not present, they will not be used when an explicit <code>nil</code> is passed in. Therefore, this:</p>
            <div class="highlight"><pre><span class="n">game</span><span class="o">.</span><span class="n">play</span><span class="p">(</span><span class="n">no_of_players</span><span class="p">:</span> <span class="kp">nil</span><span class="p">)</span>
            </pre></div>
            <p>will throw an error, because we&#39;re trying to multiply <code>nil</code> by 100.</p>
            <p>This example is trivial, the <code>nil</code> is easy to spot, but what if it is a variable calculated somewhere else on your application?</p>
            <p>You have two options here:</p>
            <ol>
            <li>You ensure that variables passed in to the method can never be <code>nil</code>.</li>
            <li>You handle the <code>nil</code> inside of the method with something like this:</li>
            </ol>
            <div class="highlight"><pre><span class="k">def</span> <span class="nf">play</span><span class="p">(</span><span class="n">no_of_players</span><span class="p">:</span> <span class="kp">nil</span><span class="p">,</span> <span class="n">buy_in</span><span class="p">:</span> <span class="kp">nil</span><span class="p">)</span>
              <span class="n">no_of_players</span> <span class="o">||=</span> <span class="mi">2</span>
              <span class="n">buy_in</span> <span class="o">||=</span> <span class="mi">100</span>
              <span class="vi">@house_money</span> <span class="o">=</span> <span class="n">no_of_players</span> <span class="o">*</span> <span class="n">buy_in</span>
            <span class="k">end</span>
            </pre></div>
            <p>This approach defeats the purpose of the keyword arguments almost entirely, but rest assured that you won&#39;t have to do this often. </p>
            <p>Most of the time you won&#39;t really care if the arguments are <code>nil</code>, because they either won&#39;t be or you&#39;ll be checking that someplace else. If you do need to make sure they are not <code>nil</code>, you are left with these options.</p>
            <p>The moral of the story is to not assume that just because you have a default, you can&#39;t have a <code>nil</code>.</p>',
            author: a4,
            category: c1,
            created_at: '2014-04-14')
#
#
# Author.destroy_all
# Category.destroy_all
# Post.destroy_all
