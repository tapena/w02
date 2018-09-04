# Exercise - Diamond Refactoring

![necklace](resources/necklace.jpg)

An advertising firm for [De Beers]("https://www.debeers.com") has asked your team to create a method that takes takes a word and returns a string to print the word in a diamond design. Each letter is printed as a separate diamond, starting at "A" and expanding to the letter, then reduces back to "A". The return value must be a single string with escaped chacaters.

Example Letter:
```ruby
# The letter "C" is translated as 
  A
 B B
C   C
 B B
  A
```

The point of this exercise is actually not to write the code. It's already written. The point of this exercise is to refactor the code that's written. You should not change the function of the code, just clean it up and make it run smoothly.

# Commit 0 - Research

### Refactoring

Look at the [Refactoring](../../Resources/Refactoring.md) section of resources

### Escape characters

An escape character is a character which invokes an alternative interpretation on subsequent characters in a character sequence. Here are some examples

- `\"` – double quote
- `\\` – single backslash
- `\a` – bell/alert
- `\b` – backspace
- `\r` – carriage return
- `\n` – newline
- `\s` – space
- `\t` – tab

example:
```ruby
puts "Hello\t\tworld"
 
puts "Hello\b\b\b\b\bGoodbye world"
 
puts "Hello\rStart over world"
 
puts "1. Hello\n2. World"
```

result
```
$ double-quotes.rb
Hello   world
Goodbye world
Start over world
1. Hello
2. World
```

The backslash followed by these characters act as if they are one Metacharacter. Try using one or two of them in a string then printing with `puts`, see the effect when you print the string. Then change the print keyword to `p` on the same string and run it again, you'll see the literial characters instead of the alternative interpretation.

# Commit 1 - Run then Walk

### Run the Code

Run the code in the terminal and get a good idea of what the returns. You can play around with the runner code to see how giving the method a different argument changes the return value of the method.

### Walk Through Each Line

Walk though each line, comment at the end of each line what that line is doing in the code. Especially, note the function on lines 6, 9, 68, 69, 72, 73, 77 - 81, 103, 127, and 171. Write down a comment of what happens on each of these lines.


# Commit 2 - Write Tests

Writing a test can be just some code that tests the return value does not change. Writing tests can be tricky for something that prints to the screen. Observe that this method returns a string with next line escape characters. Change the runner code from `puts` to `p` for an example string that can be used for your tests.

Hint: If you get stuck you can look at an example test [here](examples/example_test.rb)

# Commit 3 - Refactor Solution

How to Refactor

Follow the code smells with [Refactoring](../../Resources/Refactoring.md)

Remember: Don't break the tests and you should not change the function of the method, just clean the code.

# Bonuses

### Bonus 1 - Make a necklace

Change the refactored solution so the dimaonds of each letter connect at the tip. To resemble a necklace.

Example: if you gave the string 'Debbee' it would print:

```
    A   
   B B  
  C   C 
 D     D
  C   C 
   B B  
    A   
    A    
   B B   
  C   C  
 D     D 
E       E
 D     D 
  C   C  
   B B   
    A    
    A 
   B B
    A 
    A 
   B B
    A 
    A    
   B B   
  C   C  
 D     D 
E       E
 D     D 
  C   C  
   B B   
    A    
    A    
   B B   
  C   C  
 D     D 
E       E
 D     D 
  C   C  
   B B   
    A   
```

### Bonus 2 - Code Golf

There are competitions for the highest level of refactored code. Depending on where you play, the rules may be altered but the generic idea is the solution that takes the least number of characters is equivalent to the least number of strokes in golf.

Look at this [Code Golf - Stack Exchange]("https://codegolf.stackexchange.com/") site for example.

Additional rules can be least memory space that the file takes up, least number of miliseconds that the program runs, etc. in addition to the least number of characters in order to settle a tie.

No one actually writes code like this in production because the code is often too messy for it to be maintained effectively, however it can be fun and it's helpful to see how far you can push this concept of making your code more concise.



