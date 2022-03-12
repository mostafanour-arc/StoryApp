# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

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
1- API to create new user:                          post '/users'
2- API to list all users:                           get '/users'
3- API to add a story:                              post "/stories"
4- API to List User Posts with pagination :         get  "/stories?user_id=id&page=?"
5- API to List Top Posts with pagination:           get  '/stories/top?page=?'
6- API to add a review to Post:                     post  '/stories/story_id/reviews'

