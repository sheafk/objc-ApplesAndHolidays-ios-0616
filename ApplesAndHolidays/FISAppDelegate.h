//
//  FISAppDelegate.h
//  ApplesAndHolidays
//
//  Created by Al Tyus on 5/30/14.
//  Copyright (c) 2014 com.flatironschool. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;


+ (NSMutableArray *)applePickerWithFruits:(NSMutableArray *)fruits;
+ (NSMutableDictionary *)addSupply:(NSString *)supply
            toWinterHoliday:(NSString *)holiday;
+ (NSString *)secondSupplyFourthOfJuly; 
+ (NSMutableDictionary *)holidaySupplies;
+ (NSMutableDictionary *)addSupplyToMemorialDay:(NSString *)supply;
+ (NSMutableDictionary *)addHoliday:(NSString *)holiday toSeason:(NSString *)season withSupplies:(NSArray *)newHolidaySupplies;

@end
