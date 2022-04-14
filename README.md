# Bookmark_manager_challenge

# USER STORIES DOMAIN MODELLING (USING MIRO BOARD)
<div>
<br>
<<iframe width="768" height="432" src="https://miro.com/app/live-embed/uXjVO9sGhD0=/?moveToViewport=-664,-257,1350,545" frameBorder="0" scrolling="no" allowFullScreen></iframe>
</div>

- Alt' link to the domain model: https://miro.com/app/board/uXjVO9sGhD0=/?share_link_id=405478026260

To begin Project:
run git --init - intialize repo
install gem dependencies - bundle install then bundle

Getting Started:
1. Connect to psql
2. Create database using the psql command CREATE DATABASE bookmark_manager;
3. Connect to database using psql command \c bookmark_manager
4. Run query saved in migrations file - 01_create_bookmarks_table.sql
5. run rackup and navigate to http://localhost:9292

TESTING - run rspec

User Stories

# USER STORY 1
As a user
So that I keep track of certain websites
I would like to see a list of bookmarks

# USER STORY 2
As a busy user
So that I can see a website address
I want to add the site's address and title to a bookmark manager

# USER STORY
'As a user
So that I can see certain websites later
I want to be able to add new bookmarks to my bookmark manager
