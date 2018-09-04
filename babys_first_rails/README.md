## Intro to Rails

We're going to create another rails app today. Don't forget what we learned in class: 

▼ ▼ ▼ ▼ STEPS ▼ ▼ ▼ ▼
```
1. WEB REQUEST
2. API ROUTE
3. API CONTROLLER
4. WEB RESPONSE
```

1. A user enters a url in the browser, triggering a web request.
2. Rails checks the url to see if it matches a defined route in the routes file.
3. If the route matches, Rails runs appropriate code in a controller.
4. The controller code renders a web response .

### Creating a rails project

- Create a new rails app in your actualize directory (OUTSIDE the independent practice repository) with `rails new babys_first_rails`. This will make a new rails app using the configuration from our .railsrc file.
- `cd` into your `babys_first_rails` folder.
- run `rails server` and see what happens.
- This will start a server on `localhost:3000` head there in the browser and see what it says...

### Routing 

- In routes.rb we write logic to map our routes to controllers we will make.
- Let's say when a user sends a `GET` request to the root route, `/`, we want the api namespace `welcomes` controller's `hello` method to run. In order to do that we could write:

```ruby
namespace :api do
    get "/" => "welcomes#hello"
end
```
Try saving the file and heading to your root route (which is just `/`). What error do you get?

**Pro tip:** run `rails routes` in your rails app to see a list of all the application's routes

### Controllers

If you did the last step correctly, you should see an error message: `*uninitialized constant Api::WelcomesController*`. This means that we need to create an api namespaced controller with the name `welcomes` as that is where we told our route to go in the first place!

- Run: `rails generate controller api/welcomes`

Reload the page again and find a different error message: `*The action 'hello' could not be found for Api::WelcomesController*`. We have created the welcomes controller correctly, but there is no `hello` method defined. Let's make one:

app/controllers/api/welcomes_controller.rb

```ruby 
class Api::WelcomesController < ApplicationController
    def hello
    	render 'hello.json.jbuilder'
    end
end
```

Wow, another error! `*Missing template welcomes/hello...*` A directory called `app/views/api/welcomes` should already exist; it was generated when the welcomes controller was generated (thanks Rails!). Inside of that directory, create the file `hello.json.jbuilder`. Inside `hello.json.jbuilder`, add some json:

app/views/api/welcomes/hello.json.jbuilder

```json
json.message "hello there"
```

Check out out your root route in the browser one more time.

### Passing data to our jbuilder view

Our view should only be concerned with presenting the data, but not actually generating it. Let's create an instance variable in our controller and pass it to the view:

app/controllers/api/welcomes_controller.rb

```ruby
class Api::WelcomesController < ApplicationController
  def hello
    @random = Random.new.rand(100)
    render 'hello.json.jbuilder'
  end
end
```

Notice we did not create a variable named `random`. Instead we created an instance variable named `@random`. The **@** is VERY important. Normal variables' scope do not reach the view; only **instance variables**' scope reach the view.

Finally, we can refactor the `welcomes/hello.json.jbuilder` file so that it will use this new variable.

```json
json.message "hello there"
json.random @random
```
Wooo, nice!

### Exercise

* Create a new route: a GET request to `/about` will hit the controller#action `welcomes#about`.
* Have `welcomes#about` render a view in `welcomes/about.json.jbuilder`.
* Set a variable equal to your favorite computing language in your `welcomes#about` controller, and have the controller pass that variable into the view.  
* Update the `welcomes/about.json.jbuilder` view to show the variable you passed in.
* Your view should now display your favorite language!

## Deliverable

Create a new repository on github and connect it to your local `babys_first_rails` repository. Git add, commit, and push to the master branch to put your new rails project on github. Go to the babys_first_rails_solution.md file in this folder and follow the instructions! Once you've completed the assignment, do this in the independent practice repository:

```bash
$ git add --all
$ git commit -m "your commit message goes here"
$ git push origin YOUR-GITHUB-USERNAME-GOES-HERE
```
