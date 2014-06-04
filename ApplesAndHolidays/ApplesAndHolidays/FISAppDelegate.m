//
//  FISAppDelegate.m
//  ApplesAndHolidays
//
//  Created by Al Tyus on 5/30/14.
//  Copyright (c) 2014 com.flatironschool. All rights reserved.
//

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSMutableDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];

    return YES;
}

+ (NSMutableDictionary *)holidaySupplies
{
    
    NSMutableDictionary *winter = [NSMutableDictionary dictionaryWithDictionary:@{@"christmas" : [NSMutableArray arrayWithArray:@[@"Lights", @"Wreath"]], @"newYears" : [NSMutableArray arrayWithArray:@[@"Party Hats"]]}];
    
    NSMutableDictionary *summer = [NSMutableDictionary dictionaryWithDictionary:@{@"fourthOfJuly" : [NSMutableArray arrayWithArray:@[@"Fireworks", @"BBQ"]]}];
    
    NSMutableDictionary *fall = [NSMutableDictionary dictionaryWithDictionary:@{@"thanksgiving" : [NSMutableArray arrayWithArray:@[@"Turkey"]]}];
    
    NSMutableDictionary *spring = [NSMutableDictionary dictionaryWithDictionary:@{@"memorialDay" : [NSMutableArray arrayWithArray:@[@"BBQ"]]}];
    
    return [NSMutableDictionary dictionaryWithDictionary:
            @{@"winter" : winter,
              @"summer" : summer,
              @"fall" : fall,
              @"spring" : spring}];
}


@end