---
tags: arrays, micro, introduction
languages: ruby
resources: 1
---
# Introduction To Simple Array Manipulations
In the previous lab, you learnt how to create arrays and access the elements of an array. Now you are ready to manipulate arrays using different ruby methods.

> Make sure to consult the Official Documentation of the Ruby Language when solving this lab.

## Objectives

1. Become comfortable using the official documentation of the Ruby Language
2. Gain proficiency performing simple array  manipulations
3. Gain proficiency understanding the result of method calls on arrays

## Instructions

Open `spec/intro_to_simple_array_manipulations_spec.rb` and go through each test sequentially.  Be sure to read each test very carefully. 

The only code you will be altering is the underscores. Let's look at an example:

```ruby
# intro_to_simple_array_manipulations_spec.rb

context 'push method' do
  artists = ["Hozier", "Ed Sheeran", "Ariana Grande", "Usher"]
  next_artist = "Beyonce"

  it "adds an element to the end of an array" do
    answer = __ # replace the underscore with your answer
    expect(answer.last).to eq(next_artist)
  end
end
```

This test is asking you to add the next artist, Beyonce, to the array of artists using the push method. If you didn't know what the push method was, you could always look it up in the [Ruby Docs](http://www.ruby-doc.org/core-2.2.0/Array.html#method-i-push).

The answer would be to delete the underscore and instead call `push` on the array and pass it the argument of `next_artist`, as seen below:

```ruby
# intro_to_simple_array_manipulations_spec.rb

context 'push method' do
  artists = ["Hozier", "Ed Sheeran", "Ariana Grande", "Usher"]
  next_artist = "Beyonce"

  it "adds an element to the end of an array" do
    answer = artists.push(next_artist)
    expect(answer.last).to eq(next_artist)
  end
end
```

Consult the official documentation of the [Ruby Landguage](http://ruby-doc.org/core-2.2.0/) for the methods you need to use to solve the problems in this lab.

As you read the method descriptions, make sure to pay attention to understanding what the method returns. For instance, when you call push on an array, it returns the updated array:

```ruby
artists = ["Hozier", "Ariana Grande", "Usher"]
next_artist = "Beyonce"
artists.push(next_artist)
# => ["Hozier", "Ariana Grande", "Usher", "Beyonce"]
```

However, `pop` works a little differently. Pop knocks the last element in an array off. Let's take a look:

```ruby
artists = ["Frida Kahlo", "Pablo Picasso", "Cai Guo-Qiang"]
artists.pop
# => "Cai Guo-Qiang"

artists
# => ["Frida Kahlo", "Pablo Picasso"]
```

You can see that while pop removes an element from an array, its return value is the last element, in this case Cai Guo-Qiang.


> One of the most common problems you will encounter on your journey to becoming a software developer is not knowing what object a method returns. For example: you might assume that the result of a method call is a string but instead it is an array.  
