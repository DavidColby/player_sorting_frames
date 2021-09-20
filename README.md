This repo demonstrates using Ruby on Rails and Turbo Frames to create a sortable table. The code in this repo is intended to accompany the tutorial originally published on [my blog](https://www.colby.so/posts/sortable-table-with-rails-and-turbo-frames).

To follow along with the tutorial, work from the main branch.

The final, working implementation lives in the sortable branch.

## Project setup
After cloning this repo:

```
bundle install
rails db:create && db:migrate
```

Start the server and compile assets with `bin/dev`

After setup, visit http://localhost:3000/players.

The final implementation can also be seen on [Heroku](https://aqueous-stream-31641.herokuapp.com/).
