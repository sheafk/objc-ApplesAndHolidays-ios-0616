# Apples And Holidays

## Objectives

1. Use `NSPredicate` to filter objects in an array.
2. Practice accessing a nested collection.

### Instructions

In the `FISAppDelegate.h` header file, declare the following seven instance methods, then navigate to the `FISAppDelegate.m` implementation file and define them all to either return `nil` or return a test object of the correct kind:

* `pickApplesFromFruits:` which takes one `NSArray` argument `fruits` and returns an `NSArray`.

* `holidaysInSeason:inDatabase:` which takes two arguments, an `NSString` called `season` and an `NSDictionary` called `database`, and returns an `NSArray`.

* `suppliesInHoliday:inSeason:inDatabase:` which takes three arguments: an `NSString` called `holiday`, an `NSString` called `season`, and an `NSDictionary` called `database`; and returns an `NSArray`.

* `holiday:isInSeason:inDatabase:` which takes three arguments: an `NSString` called `holiday`, an `NSString` called `season`, and an `NSDictionary` called `database`; and returns a `BOOL`.

* `supply:isInHoliday:inSeason:inDatabase:` which takes four arguments: an `NSString` called `supply`, an `NSString` called `holiday`, an `NSString` called `season`, and an `NSDictionary` called `database`; and returns a `BOOL`.

* `addHoliday:toSeason:inDatabase:` which takes three arguments: an `NSString` called `holiday`, an `NSString` called `season`, and an `NSDictionary` called `database`; and returns an `NSDictionary`.

* `addSupply:toHoliday:inSeason:inDatabase:` which takes four arguments: an `NSString` called `supply`, an `NSString` called `holiday`, an `NSString` called `season`, and an `NSDictionary` called `database`; and returns an `NSDictionary`.

**Top-tip:** *Hitting* `enter` *while you cursor is in the space between the argument components in a method declaration line will align the components of the method name by the* `:` *("colon") on a new line.*

Run the tests with `⌘``U` to see that most of them fail.

## Apple Picker

*And I keep hearing from the cellar bin  
The rumbling sound  
Of load on load of apples coming in.*  
—[*After Apple Picking*][after_apple_picking], Robert Frost

[after_apple_picking]: http://www.poets.org/poetsorg/poem/after-apple-picking

Write out the implementation body for the `pickApplesFromFruits:` method so that it returns an `NSArray` of all of the occurrences of the string `@"apple"` in the argument array `fruits`. Think about how you can filter the argument array using `NSPredicate`.

## Holiday Supplies 

1. Look at the `HolidayTests` file to review the structure of the `suppliesByHolidayAndSeason` dictionary at the top of the file. This dictionary is submitted to the `database` argument of the method calls across the test file, meaning that it's the collection you'll be working with. *You should be able to decipher that this is a nested collection: the first layer is a static dictionary of "season" keys; each season key is bound to a mutable dictionary of "holiday" keys; each holiday key is bound to mutable array of "supplies" relevant to that holiday.*
2. Write the implementations for the rest of the methods, running the tests as you finish each one to make sure its tests pass: 

  * `holidaysInSeason:inDatabase:` to return an array of all of the "holiday" keys in the sub-dictionary associated with the submitted "season" argument.
  
  * `suppliesInHoliday:inSeason:inDatabase:` to return the mutable array of all of the supplies for the submitted "holiday" in the submitted "season".
  
  * `holiday:isInSeason:inDatabase:` to return whether or not the submitted "season" contains a key that matches the "holiday" argument.
  
  * `supply:isInHoliday:inSeason:inDatabase:` to return whether or not the submitted "holiday" in the submitted "season" contains in its array the submitted "supply" string.
  
  * `addHoliday:toSeason:inDatabase:` to create a new key-value pair in the submitted "season" key's sub-dictionary that uses the submitted "holiday" as the key and sets up an empty mutable array as its value.
  
  * `addSupply:toHoliday:inSeason:inDatabase:` to insert the submitted "supply" argument into the mutable array of the submitted "holiday" key in the sub-dictionary of the submitted "season" key.


