#import "Specta.h"
#define EXP_SHORTHAND
#import "Expecta.h"
#import "FISAppDelegate.h"


SpecBegin(ApplesTests)

__block NSMutableArray *fruitsNoApples = [NSMutableArray arrayWithArray:@[@"orange",@"pear",@"kiwi"]];
__block NSMutableArray *fruitsTwoApples = [NSMutableArray arrayWithArray:@[@"apple", @"orange", @"apple"]];
__block NSMutableArray *fruitsFiveApples = [NSMutableArray arrayWithArray:@[@"apple", @"orange", @"apple",@"pear", @"apple", @"apple",@"peach",@"apple"]];


describe(@"ApplesSpec", ^{

    it(@"Should have an Apple Picker Method", ^{
        
        expect([FISAppDelegate class]).to.respondTo(@selector(applePickerWithFruits:));
    });
    it(@"Should return an Array of Strings from the Apple Picker Method", ^{

        NSArray *apples = [FISAppDelegate applePickerWithFruits:fruitsTwoApples];
        
        expect(apples).to.beKindOf([NSArray class]);
        for (NSString *apple in apples)
        {
            expect(apple).to.beKindOf([NSString class]);
        }
    });

    it(@"should return exactly one Apple string for each apple string contained in the fruits array", ^{

        NSArray *noApples = [FISAppDelegate applePickerWithFruits:fruitsNoApples];
        NSArray *twoApples = [FISAppDelegate applePickerWithFruits:fruitsTwoApples];
        NSArray *fiveApples = [FISAppDelegate applePickerWithFruits:fruitsFiveApples];
        
        expect([noApples count]).to.equal(0);
        expect([twoApples count]).to.equal(2);
        expect([fiveApples count]).to.equal(5);
    });
 
});


SpecEnd

