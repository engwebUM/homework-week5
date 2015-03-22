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


Post.create(title: 'Game On! RubyConf Portugal is back in 2015',
            text: '<p>We\'re ready to announce that the 2nd edition of <a href="http://rubyconf.pt/">RubyConf Portugal</a> is coming and it\'s going to be bigger, bolder and awesome-er!</p>
            <p>A long time passed since the day that we decided to create the <a href="https://blog.groupbuddies.com/posts/31-brace-yourselves-rubyconf-portugal-is-coming">very first</a> RubyConf Portugal. Since then we worked tirelessly to make sure that, with the first edition, we\'d build the foundations for a consistent yearly conference about Ruby in Portugal. By the reactions from speakers and attendees, it seems we\'ve hit a home run.</p>
            <p>Again this year, this is an event envisioned by <a href="https://groupbuddies.com/">Group Buddies</a>, although everyone is invited to help us put it together. We want to join forces and unite the community, in order to create the best event we possibly can.</p>
            <h1>Where?</h1>
            <p>The conference will again take place in the beautiful city of Braga, Portugal\'s third biggest city, with an amazing history and a fantastic University. It was the European Youth Capital in 2012 and it is 30 mins away from Porto, the <a href="https://www.europeanbestdestinations.org/top/europe-best-destinations-2014">coolest city of Europe</a>. You probably already heard of it, at least about the Port Wine and the <a href="https://www.ana.pt/en-US/Topo/institucional/aboutANA/News/Ne…Pages/Porto-Airport-once-again-voted-3rd-best-in-Europe.aspx">OPO airport</a> (which, by the way, was also considered one of the best in Europe).</p>',
            author: a1,
            category: c1)

Post.create(title: 'Getting Hooked',
            text: '<p>I said it before and I&#39;ll say it again, several times: Automation is awesome.</p>
            <p>I previously showed an example of how you can automate the whole <a href="https://blog.groupbuddies.com/posts/44-easily-merging-pull-requests">process of merging pull requests</a>.</p>
            <p>Now I&#39;d like to share another git tip that helps me speed up my workflow. This one is about <a href="http://git-scm.com/book/en/v2/Customizing-Git-Git-Hooks">git hooks</a>.</p>
            <h1>What are git hooks?</h1>
            <p>A git hook is a script that gets triggered automatically when certain events happen (e.g. when creating a new commit). Now you&#39;re probably remembering that Github has something similar, called <a href="https://developer.github.com/webhooks/">Webhooks</a>. Those are the things that trigger your <a href="https://travis-ci.org/">Travis CI</a> builds every time you push a new commit (that&#39;s just one example of the many integrations Github provides).</p>
            <p>While those are great for their purpose, git itself has its own hooks that you can use to your advantage in your local copy of a repository.</p>
            <p>Some of the most commonly used hooks include:
            * <strong>pre-commit</strong> Triggered when you invoke <code>git commit</code>, but before the commit is actually created
            * <strong>post-commit</strong> Same thing, but gets triggered after the commit is created
            * <strong>post-checkout</strong> For when you use <code>git checkout</code>, or when the <code>HEAD</code> pointer changes.</p>
            <p>You can see the full list in the <a href="http://git-scm.com/docs/githooks">official docs</a>, but this gives you a good overview already.</p>
            <p>Hooks can also influence the behaviour of git itself. For instance, if a <code>pre-commit</code> hook exits with a non-zero status, the commit command is cancelled. This allows you to define some interesting behaviour.</p>
            <h1>Your first hook</h1>
            <p>To create a git hook for your project, all you have to do is create an executable in the <code>.git/hooks/</code> directory of your local repository, with the filename being the name of the hook you want to listen to. You can use any language you want (but I&#39;m sticking to Ruby and Bash scripts here).</p>
            <p>Let&#39;s say you want to boost your morale, by printing a random joke to the terminal every time you create a new commit. You can do this with the following script:</p>
            <div class="highlight"><pre><span class="c1">#!/usr/bin/env ruby</span>
            <span class="nb">require</span> <span class="s1">&#39;net/http&#39;</span>
            <span class="nb">require</span> <span class="s1">&#39;json&#39;</span>
            <span class="n">uri</span> <span class="o">=</span> <span class="no">URI</span><span class="o">.</span><span class="n">parse</span><span class="p">(</span><span class="s1">&#39;http://api.icndb.com/jokes/random?limitTo=[nerdy]&#39;</span><span class="p">)</span>
            <span class="n">response</span> <span class="o">=</span> <span class="no">Net</span><span class="o">::</span><span class="no">HTTP</span><span class="o">.</span><span class="n">get</span><span class="p">(</span><span class="n">uri</span><span class="p">)</span>
            <span class="n">joke</span> <span class="o">=</span> <span class="no">JSON</span><span class="o">.</span><span class="n">parse</span><span class="p">(</span><span class="n">response</span><span class="p">)</span><span class="o">[</span><span class="s2">&quot;value&quot;</span><span class="o">][</span><span class="s2">&quot;joke&quot;</span><span class="o">]</span>
            <span class="nb">puts</span> <span class="n">joke</span>
            </pre></div>
            <p>Save this file as <code>.git/hooks/post-commit</code>, give it execution permissions with <code>chmod +x .git/hooks/post-commit</code>, and you&#39;re good to go:</p>
            <div class="highlight"><pre><span class="nv">$ </span>git commit -m <span class="s2">&quot;Testing my git hook&quot;</span>
            Chuck Norris doesn<span class="err">&#39;</span>t need to use AJAX because pages are too afraid to postback anyways.
            <span class="o">[</span>master e7c64d9<span class="o">]</span> Testing my git hook
            </pre></div>
            <h1>How about something useful now?</h1>
            <p>Now we&#39;re ready to do some hooks that actually help our workflow.</p>
            <h2>Preventing mistakes</h2>
            <p>Have you ever pushed something, only to find out 5 minutes later that you forgot to remove that nasty breakpoint from the code? Or maybe you tend to push commits with small code style issues that your CI warns you about right away.</p>
            <p>A good solution could be having a hook that looked for those mistakes, and prevented you from committing them. For a Ruby project, it could be something like this:</p>
            <p>The first function will check if your <code>Gemfile</code> and <code>Gemfile.lock</code> match each other. If you update the first one, but forget to stage the second one, that&#39;s usually a mistake. And you don&#39;t need to bother your CI server when mistakes are easily and quickly detected.</p>
            <p>If that check passes, the script will also run your test suite.</p>
            <p>That last detail is probably an overkill. You don&#39;t want your entire test suite to be run every time. But maybe you have a smaller subset of that, or a quick tool you use for code style checks? <a href="https://twitter.com/tenderlove">Aaron Patterson</a> created a <a href="https://gist.github.com/tenderlove/fba8eaf2b2e3d84d77c5#file-cov-rb">gist</a> that allows you to detect which specs are affected by your changes, and this is a great use case for it.
            Another option is to run <a href="https://github.com/bbatsov/rubocop">rubocop</a> or some other code quality tool that you might have integrated in your workflow.</p>
            <h2>Updating your metrics</h2>
            <p><a href="https://codeclimate.com/">Code Climate</a> is a great tool. But it&#39;s also an expensive one (for private repositories, at least).</p>
            <p>A poor man&#39;s alternative is to use a local tool like <a href="https://github.com/metricfu">metric_fu</a>, that compiles a list of issues found in your code. It also plots how the issues count progresses over time, which is interesting for analysing how your projects evolve (or degrade).</p>
            <p>I liked the idea of maintaining a plot with the evolution of our projects, but I definitely can&#39;t rely on myself to remember to run metric_fu periodically. So I built a hook that does it for me.</p>
            <p>But for this case, doing that after every commit was not an option. That would end up plotting data about my feature branches, which did not reflect the state of the final code.</p>
            <p>I wanted to run this only for commits merged to the <code>master</code> branch. That requires a bit more work:</p>
            <p>Here I&#39;m checking for three things before actually running metric<em>fu:
            1. Is the current branch <code>master</code>?
            2. Does this repository have a <code>Gemfile</code> (or rather, is this a Ruby project?)
            3. Is metric</em>fu installed?</p>
            <p>If everything checks, the metrics are saved to <code>.metrics</code>. The gem will take care of merging any previous results that already existed in there.</p>
            <p>It&#39;s also worth nothing the way I&#39;m invoking <code>metric_fu</code>:</p>
            <p>I&#39;m suppressing all output, including errors, and I&#39;m running it in the background. Since it might be a long process, and I don&#39;t need the metrics right away, I can just keep going with my life.</p>
            <h2>Be creative</h2>
            <p>You can think of all sorts of other things to automate this way. For example, <a href="http://tbaggery.com/2011/08/08/effortless-ctags-with-git.html">this article</a> by Tim pope <a href="https://twitter.com/tpope">Tim pope</a> covers how you can have your <a href="http://ctags.sourceforge.net/">ctags</a> entirely managed by git hooks.
            Be sure to leave a comment if you have an interesting idea for another git hook. I&#39;m actively looking for more.</p>',
            author: a2,
            category: c1))
#
# Author.destroy_all
# Category.destroy_all
# Post.destroy_all
