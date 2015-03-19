# How populate database:
1. Open terminal
2. Go to directory rails application ("dynamic-blog")
3. Access console rails, type "rails console"

## For create new user:
4. \> u = User.create firstname:"Sandro", lastname:"Ferraz", email(optional):"sandro@gmail.com", about(optional):"Write something about", twitter(optional):"url_twitter"
5. \> u.save

## If we want use existing user:
6. \> User.all #for see all users
7. \> u.find(:id) #pass parameter user id

## For create new post:
8. \> p = Post.create title:"Title", description:"Some description", user:u
9. \> p.save