# Exercise - Scrabble Word Permutations Checker

![tiles](resources/wood-tiles.jpg)

You are working on a team to create a digital version of the [Scrabble game](https://scrabble.hasbro.com/en-us). 

One part of Scrabble is you are given a number of letter tiles and as a player you must make a word with those given letters. this is referred to as a word permutation.

A word permutation is the way a set or letters can be reordered or arranged. This is typically one of several possible variations the letters can be arranged and can be less than the base set of letters. For ease we will refer to this base set as a base word but it doesn't have to be an actual word from the dictionary, that will be someone else's job.

Your job... if you choose to accept it, is to create a ruby method that can take in two words and find if the second word is a permutation of the first word (base word). 

Your method should return true if the second word is a permutation of the first word (base word) and return false if the second word is not a permutation of the first word (base word).

In addition, when you call your method you will eventually use the ruby tool `ARGV` in the runner code. This will allow you to pass in your two arguments from the command line.

# Commit 0 - Research

`ARGV` takes in command line arguments while running your ruby file from terminal.

You can run the [`argv_example.rb`](examples/argv_example.rb) and pass in some arguments from the command line with this command `ruby argv_example.rb rupert ariel tennant`

Try changing the words that follow the file name in the command line.

### Further Research

You can watch this video for a quick explination of using ARGV in a ruby file.
- [Ruby tutorial - pass in command line arguments](https://www.youtube.com/watch?v=ork0GTSTojA)

or read how it functions
- [Explination of ARGV](http://jnoconor.github.io/blog/2013/10/13/a-short-explanation-of-argv/)

# Commit 1 - Psuedocode

- Input - Write down the type of data you need to run your method
  - Include examples for all possible outcomes
- Output - Write down the type of data you expect to be returned by your method
  - Give an example you expect to be returned for each of your example inputs
- Write a list of logical steps necassary to solve this problem

# Commit 2 - Initial Solution

Add code to the provided method in the `Initial Solution`

### RSpec

This is a new concept. You don't have to completely understand rspec to use it. We will talk about testing suites and RSpec as a class lecture in more detail. For now, there is an rspec file that runs ruby tests for your method found in this folder. To use this first install the `rspec` gem with the terminal command `gem install rspec`

You should then run`rspec permutation_spec.rb` in the terminal, using the printed messages as a guide. Basically, run the tests, read the messages, change your method to make the tests pass.

# Commit 3 - Write Runner Code / Tests

Add runner code to call your method.

Start with some code that will tell you if the method will pass or fail

examples

```ruby
p permutation_checker("tubular", "lab") == true
p permutation_checker("tubular", "excellent") == false
```

# Commit 4 - Refactor Solution

Copy and paste your initial solution into the `Refactored Solution` area, then comment out your initial solution. Refactor your solution according to the [refactoring guidelines](../../Resources/Refactoring.md).

# Commit 5 - Change Runner code

Change your runner code to use `ARGV` taking in arguments from the command line.

<br>
<br>

# Bonus

### Second method
- Write a second method that takes in multiple possible purmutations as the second argument then uses your permutation_checker method to detect which possible permutations are correct and returns a list of those words.
- You will need to change you runner code to call this bonus method.

### Change ARGV

- An alternative to ARGV is the default global variable, `$*`. Try changing ARGV to the dollar splat global variable and run your code again.
