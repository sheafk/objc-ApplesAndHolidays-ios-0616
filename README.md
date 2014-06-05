---
  tags: todo, NSArray, NSDictionary
  languages: objc
---

# Apple Picker

## Instructions

In FISAppDelegate.m implement a class method that will pick the apples out of the fruits array.  

```objc
NSArray *fruits = @["apple", "orange", "apple"]

[FISAppDelegate applePickerWithFruits:fruits] #=> ["apple", "apple"]
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


