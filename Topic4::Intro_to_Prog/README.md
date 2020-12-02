# Programming fundamentals: basic data types, variables, flow control

Ruby is the primary programming language we'll be learning in this course. Ruby was created by Yukihiro Matsumoto aka Matz in 1995.

Matz set out to design a language that emphasized human needs over those of the computer, which is why Ruby is so easy to pick up. Not only is it easy to learn, but has also become very popular for building web applications, thanks to Rails.

## Agenda
After this lesson, you will know:

  * [What is Ruby?](#what-is-ruby)
  * How to run Ruby programs
    * `ruby`
    * `irb`
  * [Basic Data Types](#basic-data-types)
    * Numbers
    * String
    * Booleans
    * Symbols
  * [Variables and assignment](#variables)
    * Constants
  * [Flow Control structures](#flow-control-structures)
    * Conditional statements
    * Loops
    * Simple iterators

## What is Ruby?
  * High-level
  * Written in C
  * Interpreted (vs. compiled)
  * Object-Oriented
  * Dynamically-typed

  Founded by Yukihiro Matsumoto (Matz)  in 1993 (Japan)
  First stable version was released in 1995
  * Syntactically Simple
  * Truly Object-Oriented
  * Having Iterators and Closures
  * Exception Handling
  * Garbage Collection
  * Portable
  * Dynamic
  * Ruby interpreter

Find info about every Ruby data type in the [Ruby docs](http://ruby-doc.org/core-2.3.0/)!

## How to run ruby ?

 * From the command line:

    $ ruby my_filename.rb
	
 * Irb
You can also run Ruby using the irb command. It stands for "interactive Ruby".Though this won't let you save your inputs, it's a great way to play around with your code.


## Basic Data Types
Data types are basic building blocks of programming languages. Programs are constructed by using these basic types to build up larger and more complex things, similar to how we combine words into sentences to convey deeper meaning than the words on their own.

### Numbers
How we represent numeric data in our programs

  * Integers 
  * Floats
  * Arithemetic operations
  * Number Comparison

### Strings
How we represent text data in our programs

  * Single quotes (`''`) vs. double quotes (`""`)
  * String interpolation
  

### Booleans
How we represent truthiness in our programs

  * Every programming language has it's own notion of what is true and what is false
  * We often refer to this as **truthiness** (or something being **truthy**) and **falsiness** (or something being **falsy**)
  * `true`
  * `false`
  * `nil` also evaluates to **false** in Ruby



## Variables
Allow us to give data a name and remember its value for use later in our program

  * Use `=` to assign values, not `==` (comparison)
  * Should be defined with letters, numbers and `_`

### Constants
  * Should be defined in ALL_CAPS
  * Issues a warning if they are changed
  
## Converting between data types
  * to_s: to string
  * to_i: to integer
  * to_f: to float
  * !! ahead of a value converts to boolean


## Flow Control structures
As our programs execute, we often need to control the flow of execution. This means making decisions about which path to take, as well as repeating a block of code a fixed number of times.

### Conditional statements
Allow us to perform different tasks based on one or more conditions

  * `if`, `elsif`, `unless`
  * Ternary operator
  * `case` / `when`

### Loops
Allow us to repeat a sequence of steps a fixed number of times

  * `while`
  * `until`

#### Simple iterators
The most common scenario where you want to repeat a sequence of steps is when you have a list of things and you want to do something once for every item in the list.

We call the process of running a block of code once for each item in a list **iteration**.
