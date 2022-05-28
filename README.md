# README


** About APP:
an application, where a user can Post a story to his timeline. Story has a title and body.
Each user can see other users’ timeline where they can find their stories' history. Another
feature is to allow users to review a post, giving it a rate out of 5 and a comment (mandatory).
Additionally users can see top posts, rated by average rate.


*** Notice: SQlite here can handle multiple requests, but it uses a single write concurrency
            While, Mysql support multiple transactions at the same time, So DBMS here should be MySQL instead of sqlite3 in case of multiple transactions             support in needed.
            All requests below 100ms on an average machine With +50K Records.
            
* Ruby version: 3.0.2
* Rails version: 6.1.5

* installing dependencies:
- $ bundle install

* Database initialization
- $ rails db:create db:migrate

* How to run the test suite:
- $ rspec

* database Seeding: - 50K Stories && 20k reviews -
- $ rails db:seed

* StoryApp APIs:
* 1- API to create new user:                          post '/users'
* 2- API to list all users:                           get '/users'
* 3- API to add a story:                              post "/stories"
* 4- API to List User Posts with pagination :         get  "/stories?user_id=id&page=?"
* 5- API to List Top Posts:                           get  '/stories/top'
* 6- API to add a review to Post:                     post  '/stories/story_id/reviews'
* 7- API to list post reviews with pagination:        get  '/stories/story_id/reviews?page=?'

