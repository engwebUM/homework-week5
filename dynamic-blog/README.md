# After download application we need:
1. Open terminal
2. Go to directory rails application ("dynamic-blog")
3. Type "bundle install" to install dependency gems
4. Type "rake db\:migrate" for migration database
5. Type "rails s" for start rails server
6. Go to "http\://localhost\:3000" in browser

# How populate database:

1. Open other tab terminal

## First option
2. Type "rake db\:seed" to seed database with default values created

## Second option
2. Access console rails, type "rails c"

### For create new user:
4. \> u = User.create firstname:"Sandro", lastname:"Ferraz", email(optional):"sandro@gmail.com", about(optional):"Write something about", twitter(optional):"url_twitter"
5. \> u.save

### If we want use existing user:
6. \> User.all #for see all users
7. \> User.find(:id) #pass parameter user id

### For create new post:
8. \> p = Post.create title:"Title", description:"Some description", user:u
9. \> p.save