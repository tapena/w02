# ActiveRecord and CRUD - Learn to be cruddy!

| Objectives       |  
| :------------------- |  
| Add models to a Rails app |
| Seed a Rails database |
| Write ActiveRecord queries |  
---

### Warmup
Convert these English statements into active record queries (we don't need to actually run them in the console as we don't have these models, just how they might look if we did!). Consult your cheat sheet and the [Rails docs](http://guides.rubyonrails.org/active_record_querying.html) as needed. Add these answers to the `be_cruddy_solution.rb` file in this repo.

1. Return the all users in the database with the last name "Hendrickson".

2. Return the answer in the database with the id of 4.

3. Return all the articles in the database.


## Ready for Rails!


#### 1. Create a new rails application
Inside your actualize directory:
``` bash
rails new conference_app 
cd conference_app
subl .
```
**ProTip: run `rails -help` to understand some of the options rails provides**

#### 2. Create a `Speaker` model
Our `Speaker` model will have three attributes: a first name, last name, and email - all strings.
``` bash
rails g model Speaker first_name:string last_name:string email:string
```

Take a look at the files you just created:  
* `app/models/speaker.rb`
* `db/migrate/1234566789_create_speakers.rb`

#### 3. Setup your database

Next, create your application database:
```bash
rails db:create # create a new database on your machine
rails db:migrate # instruct your database what tables it needs to contain
```

#### 4. Launch the rails console and create your first speaker!
```bash
rails console
```

```ruby
> speaker = Speaker.new(first_name: "Sally", last_name: "Johnson", email: "sallyj@gmail.com")
> speaker.save
```

See if you can get all the speakers from the database!
Then see if you can get the individual speaker from the database using the id that was created.

#### 5. Can you seed your database?
Take a look at `db/seeds.rb`.

Add the following line to `db/seeds.rb`:
```ruby
Speaker.create({first_name: "Dani", last_name: "Zaghian", email: "danielle@actualize.co"})
```

Now run the following from your command line (not the console!):
```bash
rails db:seed
```

The `seeds.rb` file is magic, because it _already_ knows about all of the models in your rails app. All you have to do is tell it what data to create!

Now, back in the rails console, type `Speaker.all`. Does it show the new speaker you just created?


#### Exercises

Using the rails console:

1. Add 2-3 more speakers
2. Find the first speaker
3. Find the last speaker
4. Search by id
5. Search by first name
6. Delete a speaker
7. Update the email of a speaker
8. Delete all the speakers you created
9. Create an api namespaced `Speaker` controller. Make an associated route and jbuilder view to display a single Speaker based on id. Remember to use an instance variable!


#### Bonus
2. Seed your database with 10 speakers using the FFaker gem. To achieve this goal, you will need to familiarize yourself with the `ffaker` gem.

Add the ffaker gem anywhere in your `Gemfile`:
```ruby
gem 'ffaker'
```

In the terminal, run this command to tell your rails app to include the new gem:
```bash
bundle install
#or just
bun
```
Skim through [FFaker's Documentation](https://github.com/ffaker/ffaker). Then, use [this reference](https://github.com/ffaker/ffaker/blob/master/REFERENCE.md) for syntax. Try to create new speakers using the ffaker syntax in your `db/seeds.rb` file. Seed the database and check the console to see all your speakers!


**Pro-Tip**: Remember, when you're working in the console/repl `up-arrow` is your friend!


### Deliverable
Create a new repository on github and connect it to your local `conference_app` repository. Git add, commit, and push to the master branch to put your new rails project on github. Go to the be_cruddy.rb file in this folder and follow the instructions! Once you've completed the assignment, do this in the independent practice repository:

```bash
$ git add --all
$ git commit -m "your commit message goes here"
$ git push origin YOUR-GITHUB-USERNAME-GOES-HERE
```
