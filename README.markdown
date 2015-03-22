# Homework - Week 5

This week we're going to be writing some HTML and CSS.

Go to `https://blog.groupbuddies.com`, you should now see a list of articles.
The goal of this exercise is to "copy" this page using only HTML and CSS.

**Mandatory goals**:

1) Look very similar to the original

2) Have more than one example articles

3) HTML should focus on structure and be semantic

4) CSS should be the only thing giving style

**Extras**:

5) Create a Rails app with your code (static content)

6) Add dynamic content to the page

## FAQ

1) Should I write CSS inline?

No. This is what inline CSS looks like:

```
<div style="color: red;">Some content</div>
```

You should not do this, unless you are styling an email message.

2) How to install Rails?

After having Ruby set up, run `gem install rails`. If at some point you are
requested to run this command with `sudo`, don't. That means your doing
something wrong.

3) How to generate a migration?

First of all, you only need a migration when trying to solve part 6 of the
exercise. If you are doing that, run `rails generate migration create_posts`.
