# Guide to Solving and Reviewing Intro to simple array manipulations 

This lab has 19 test in total, to just get one error message at a time you can run `learn --fail-fast`.


#### `#using_push`

The first error message is telling us `undefined method 'using_push'`, to pass this, we only have to create a method called `using_push` in our `intro_to_simple_array_manipulations.rb` file.


```ruby
def using_push
end
```

The next error message is `wrong number of arguments (2 for 0)` and we look closely to our error message it is telling us what kind of arguments our methods accepts.


```bash
#using_push
takes in two arguments, an array and a string and adds that string to the end of the array using the push method (FAILED - 1)
```

**NOTE:** The return value of the `.push` method is the modified array and that is exactly what we want here returned.

```ruby
def using_push(array, string)
  array.push(string)
end
```


#### `#using_unshift`

```bash
#using_unshift
takes in two arguments, an array and a string and adds that string to the front of the array using the unshift method (FAILED - 1)
```

Let us define a method called `using_unshift` that accepts two arguments and uses `.unshift` to add a string to the front of the array.

```ruby
def using_unshift(array, string)
  array.unshift(string)
end
```
After running `learn --fail-fast` you will notice that two test for this method are passing. The first test was looking for two arguments and the `.unshift` method and the second test was checking if the length of our array was increased by one.


#### `#using_pop`
 
```bash
#using_pop
takes in argument of an array and uses the pop method to remove the last element from the array and return that element (FAILED - 1)
```

This method takes just one arguments which is an array and removes the last element using `.pop` method.

```ruby
def using_pop(array)
	array.pop
end
```


#### `#pop_with_args`

```bash
#pop_with_args
takes in an argument of an array and uses the pop method with an argument of 2 to remove the last two array items and return them (FAILED - 1)
```

To pass this test we will use the same `.pop` method but we will pass in an argument to remove the last two elements in the array. 

```ruby
def pop_with_args(array)
  array.pop(2)
end
```

**NOTE:** The `.pop` method will remove the last element from an array and return that element. It will also return the number of elements that were passed in when used with an argument.


#### `#using_shift`

```bash
#using_shift
takes in an argument of an array and uses the shift method to remove the first item and return it (FAILED - 1)
```
For this test to pass we will use the `.shift` method. The `.shift` method removes the first element in your array and returns it.

```ruby
def using_shift(array)
  array.shift
end
```


#### `#shift_with_args`

```bash
#shift_with_args
takes in an argument of an array and uses the shift method with an argument of 2 to remove and return the first 2 items from the array (FAILED - 1)
```

Like our `.pop` method the `.shift` method can accepts an argument.

```ruby
def shift_with_args(array)
  array.shift(2)
end
```

#### `#using_concat`

```bash
#using_concat
takes in two arguments of two different arrays and uses the concat method to add the contents of the second array to the first (FAILED - 1)
```
The `.concat` method will append one array to another array.

```ruby
def using_concat(array1, array2)
  array1.concat(array2)
end
```

#### `#using_insert`

```bash
#using_insert
takes in two arguments, an array and a new element to be added to the array. it uses the insert method to add the new element to the 4th index of the array (FAILED - 1)
```

We will use `.insert` method to add an element to our array. The `.insert` method accepts two arguments, the first being the index and the second being the element we want to insert to our array.


```ruby
def using_insert(array, item)
  array.insert(4, item)
end
```

#### `#using_uniq`

```bash
#using_uniq
takes in an argument of an array and uses the uniq method to remove any duplicate items (FAILED - 1)
```

Like the test says, the `.uniq` method removes all the duplicate items in an array.


```ruby
def using_uniq(array)
  array.uniq 
end
```

#### `#using_flatten`

```bash
#using_flatten
takes in an argument of an array that contains other arrays and uses the flatten method to return an array of strings (FAILED - 1)
```

To pass this test we will use the `.flatten` method. What the `.flatten` method does is it removes all the nesting in an array. If you have lets say arrays in an array, which are again in an array. The return value of the `.flatten` method will be a single dimensional array.


#### `#using_delete`

```bash
#using_delete
takes in two arguments, an array and a string, and uses the delete method to remove any items from the array that are equal to that string (FAILED - 1)
```

The `.delete` method, which we will use to pass this test, takes in an arguments. Here in our case we will pass a string to it. Then the `.delete` will go through our array and if it finds our passed in string it will remove it from that array. The return value of this method is the deleted element.


```ruby
def using_delete(array, string)
  array.delete(string)
end
```

#### `#using_delete_at`

```bash
#using_delete_at
takes in two arguments, an array and an integer and deletes the element at the index of the array that is equal to that integer (FAILED - 1)
```

Like the `.insert` method we used before, the `.delete_at` method takes in an arguments. The arguments is the index of an element in array that we want to delete. The `.delete_at` methods return value is the deleted item.

```ruby
def using_delete_at(array, num)
  array.delete_at(num)
end
```

All our test should be passing now.