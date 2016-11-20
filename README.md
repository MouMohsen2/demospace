======= Introduction =======
This is a simple website for diving company, where they can post their events and get people to book. It also has a blog
where they can post their recent news and articles.

========= Sitemap ==========
/
  +events
    -index.php     //Show all events
    -show.php    //Show selected event from index.php
    -new.php     //Create new event (admin-only)
    -book.php    //server-side scipt to handle post method of booking
    -confirmation.php     //confirmation page shown once booking is confirmed
    -error.php     //shown if there is no tickets avaiable
  +users
    -login.php    //Login page
    -signup.php     //Signup page
    -logout.php     //PHP to handle logout requests
    -members.php    //includes both login.php and signup.php
  +posts
    -index.php //Show all posts (BLOG)
    -show.php //Show selected post from index.php
    -new.php //Create new post
  +includes
    -config.php //database connection
    -navbar.php //navigation bar (header)
    -testimonial.php //Page to be embed within the frontpage for testimonials
  +images
  +scripts
    -main.js //Javascript file to handle jquery and JS scripts
  +stylesheets
    -style.css //main CSS file
  -index.php //Front page
