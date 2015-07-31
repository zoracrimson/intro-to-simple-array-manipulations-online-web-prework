## Objectives

1. Become comfortable using the official documentation of the Ruby Language
2. Gain proficiency performing simple array manipulations
3. Gain proficiency understanding the result of method calls on arrays


# Introduction To Simple Array Manipulations

In a previous lab, you learned how to create arrays and access the elements of an array. Now you are ready to manipulate arrays using different ruby methods.

> Make sure to consult the Official Documentation of the Ruby Language when solving this lab.

## Instructions

Fork and clone this lab. Run rspec and write the methods in `lib/introduction_to_simple_array_manipulation.rb` to get the tests passing. 


Consult the official documentation of the [Ruby Language](http://ruby-doc.org/core-2.2.0/) for the methods you need to use to solve the problems in this lab.

As you read the method descriptions, make sure to pay attention to understanding what the method returns. For instance, when you call `.push` on an array, it returns the updated array:

```ruby
artists = ["Hozier", "Ariana Grande", "Usher"]
next_artist = "Beyonce"
artists.push(next_artist)
# => ["Hozier", "Ariana Grande", "Usher", "Beyonce"]
```

However, `.pop` works a little differently. Pop removes the last element from an array. Let's take a look:

```ruby
artists = ["Frida Kahlo", "Pablo Picasso", "Cai Guo-Qiang"]
artists.pop
# => "Cai Guo-Qiang"

artists
# => ["Frida Kahlo", "Pablo Picasso"]
```

You can see that while pop removes an element from an array, its return value is the last element, in this case "Cai Guo-Qiang".


> One of the most common problems you will encounter on your journey to becoming a software developer is not knowing what object a method returns. For example: you might assume that the result of a method call is a string but instead it is an array.  
