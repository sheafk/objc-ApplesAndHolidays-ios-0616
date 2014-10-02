---
  tags: todo, NSArray, NSDictionary
  languages: objc
---

# Apple Picker

## Instructions

In FISAppDelegate.m implement a class method that will pick the apples out of the fruits array.  First use a for loop to iterate over each object in the Array and test if the string in the array is equal to "apple".  Then improve your solution by using NSPredicate. (See the bottom of this README for an NSPredicate primer)   

```objc
NSArray *fruits = @["apple", "orange", "apple"]

[FISAppDelegate applePickerWithFruits:fruits]; // would return ["apple", "apple"]
```

### Skills: Arrays, Dictionaries, Iteration


#The Holiday Suppliers 

The App Delegates' holidaySupplies class method returns a bunch of decorations for various holidays organized by season.


```objc

holiday_supplies = {
    fall =     {
        thanksgiving =         (
            Turkey
        );
    };
    spring =     {
        memorialDay =         (
            BBQ
        );
    };
    summer =     {
        fourthOfJuly =         (
            Fireworks,
            BBQ
        );
    };
    winter =     {
        christmas =         (
            Lights,
            Wreath
        );
        newYears =         (
            "Party Hats"
        );
    };
}
```

## Instructions

1. Write a method that returns the second supply for the forth_of_july.
ex:

    ```objc
      + (NSString *)firstMemorialDaySupply //ex. returning first memorial day supply 
      {
          return [self holidaySupplies][@"spring"][@"memorialDay"][0]; 
      }
    ```

2. Write a method that adds a supply to a Winter holiday.

3. Write a method that adds a supply to Memorial Day.

4. Write a method that adds a new holiday to any season with supplies.

## NSPredicate

Here is an example of using NSPredicate to search an array 

```objc
NSArray *teachers = @[@"Joe", @"Al", @"Chris", @"Al"]; 
NSString *al = @"Al"; 
NSPredicate *alPredicate = [NSPredicate predicateWithFormat:@"SELF == %@", al]; 

NSArray *als = [teachers filteredArrayUsingPredicate:alPredicate]; 

//als will be this array: @[@"Al", @"Al"]; 

```

For more on NSPredicate read the [Predicate Programming Guide](https://developer.apple.com/library/mac/documentation/Cocoa/Conceptual/Predicates/Articles/pUsing.html)

Additional note

Literal implementations of objects are always immutable. There are no literal fo
rms of mutable objects. A quick and easy way to create a mutable version of a li
teral object however can be seen below. You'll see this used in the method `holidaySupplies`.

```
NSMutableDictionary *contactList = [{@"Joe Burgess":@"212-345-1111"},{@"Zach Drossman":@"973-403-9107"} mutableCopy];
```

