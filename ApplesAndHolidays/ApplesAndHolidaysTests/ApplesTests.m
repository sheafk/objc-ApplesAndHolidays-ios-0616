#import "Specta.h"
#define EXP_SHORTHAND
#import "Expecta.h"
#import "FISAppDelegate.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"

SpecBegin(ApplesTests)

__block NSArray *fruitsNoApples = @[@"orange",@"pear",@"kiwi"];
__block NSArray *fruitsTwoApples = @[@"apple", @"orange", @"apple"];
__block NSArray *fruitsFiveApples = @[@"apple", @"orange", @"apple",@"pear", @"apple", @"apple",@"peach",@"apple"];


describe(@"ApplesSpec", ^{

    it(@"Should have an Apple Picker Method", ^{
        
        expect([FISAppDelegate class]).to.respondTo(NSSelectorFromString(@"applePickerWithFruits:"));
    });
    it(@"Should return an Array of Strings from the Apple Picker Method", ^{
        
        NSArray *apples = [[FISAppDelegate class] performSelector:NSSelectorFromString(@"applePickerWithFruits:") withObject:fruitsTwoApples];
        
        expect(apples).to.beKindOf([NSArray class]);
        for (NSString *apple in apples)
        {
            expect(apple).to.beKindOf([NSString class]);
        }
    });

    it(@"should return exactly one Apple string for each apple string contained in the fruits array", ^{
        NSArray *noApples = [[FISAppDelegate class] performSelector:NSSelectorFromString(@"applePickerWithFruits:") withObject:fruitsNoApples];
        NSArray *twoApples = [[FISAppDelegate class] performSelector:NSSelectorFromString(@"applePickerWithFruits:") withObject:fruitsTwoApples];
        NSArray *fiveApples = [[FISAppDelegate class] performSelector:NSSelectorFromString(@"applePickerWithFruits:") withObject:fruitsFiveApples];
        
        expect([noApples count]).to.equal(0);
        expect([twoApples count]).to.equal(2);
        expect([fiveApples count]).to.equal(5);
    });
 
});

#pragma clang diagnostic pop

SpecEnd

