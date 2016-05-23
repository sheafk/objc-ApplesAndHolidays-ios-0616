//  FISAppDelegate.m


#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSMutableDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    return YES;
}

- (NSArray *)pickApplesFromFruits:(NSArray *)fruits {
    
    NSPredicate *occurencesOfApple = [NSPredicate predicateWithFormat:@"self CONTAINS 'apple'"];
    NSArray *listOfApples = [fruits filteredArrayUsingPredicate:occurencesOfApple];
    
    
    return listOfApples;
}

- (NSArray *)holidaysInSeason:(NSString *)season
                   inDatabase:(NSDictionary *)database {
    
    NSArray *newArray = [database[season]allKeys];
    
    return newArray;
}

- (NSArray *)suppliesInHoliday:(NSString *)holiday
                      inSeason:(NSString *)season
                    inDatabase:(NSDictionary *)database
{
    NSMutableArray *supplies = [[NSMutableArray alloc]init];
    
    [supplies addObjectsFromArray: database[season][holiday]];
    
    return supplies;
}

- (BOOL)holiday:(NSString *)holiday
     isInSeason:(NSString *)season
     inDatabase:(NSDictionary *)database
{
    
BOOL value =[[database[season] allKeys] containsObject:holiday];

    return value;
}

- (BOOL)supply:(NSString *)supply
   isInHoliday:(NSString *)holiday
      inSeason:(NSString *)season
    inDatabase:(NSDictionary *)database
{
    
    BOOL answer =[database[season][holiday] containsObject:supply];
    
    return answer;
}

- (NSDictionary *)addHoliday:(NSString *)holiday
                    toSeason:(NSString *)season
                  inDatabase:(NSDictionary *)database
{
    NSDictionary *copyOfDatabase = [database mutableCopy];
    NSMutableArray *new = [[NSMutableArray alloc]init];
    
    [copyOfDatabase[season] setObject:new forKey:holiday];
    
    return copyOfDatabase;
}

- (NSDictionary *)addSupply:(NSString *)supply
                  toHoliday:(NSString *)holiday
                   inSeason:(NSString *)season
                 inDatabase:(NSDictionary *)database
{
    NSDictionary *copyOfDatabase = [database mutableCopy];
    
    [copyOfDatabase[season][holiday]addObject:supply];
    
    return copyOfDatabase;
}

@end