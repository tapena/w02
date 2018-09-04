# More CRUD

## Return to Rails!

#### 1. Let's go back to your conference_app from yesterday
Inside your actualize directory:
``` bash
cd conference_app
subl .
```

#### 2. Create a new model in the same app!
Let's create a `Meeting` model. It will have 3 attributes: a title (string datatype), agenda (text datatype), and a time (string datatype... for now).
``` bash
rails g model Meeting title:string agenda:text time:string
```

#### 3. To the database!

Next, let's add some new instances of Meetings to our database. Use your cheatsheets where you need them!

1. Migrate the model
2. Navigate to the rails console
3. Make a few new meeting model instances in the console

#### 4. Seed 'em up

Add some seed data to `db/seeds.rb`. It will look very similar to the way you created data in the console!

Now seed the file from the command line (outside your rails console):
```bash
rails db:seed
```

#### Exercises

1. Create an api namespaced `Meetings` controller with routes and views. Create a route/controller action/view to see all the meetings as well as an individual meeting. Remember to use instance variables!
2. Make a Ruby frontend script using the HTTP gem to display the results in the terminal instead of a web browser. This script can be run from anywhere.
3. Check out the [active record query docs](http://guides.rubyonrails.org/active_record_querying.html) and play around with some of the functions listed in your rails console. See if you can use one of these queries inside your Meetings controller!


### Deliverable
Update your `conference_app` repository on github by doing a git add, commit, and push to the master branch. Go to the more_crud.md file in this folder and follow the instructions! Once you've completed the assignment, do this in the independent practice repository:

```bash
$ git add --all
$ git commit -m "your commit message goes here"
$ git push origin YOUR-GITHUB-USERNAME-GOES-HERE
```
