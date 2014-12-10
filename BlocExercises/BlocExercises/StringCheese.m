//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    NSString *sentence = [NSString stringWithFormat:@"My favorite cheese is %@.", cheeseName];
    return sentence;
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    NSRange cheeseRange = [cheeseName rangeOfString:@" cheese" options:NSCaseInsensitiveSearch];
    
    if (cheeseRange.location == NSNotFound) {
        
        return cheeseName;
    }
    else {
    NSString *justTheCheese = [cheeseName stringByReplacingCharactersInRange:cheeseRange withString:@""];
    return justTheCheese;
    }
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    
    NSString *cheeseNumber;
    
    if (cheeseCount == 1) {
        cheeseNumber = [NSString stringWithFormat:@"%ld cheese", (long)cheeseCount];
    } else {
        cheeseNumber = [NSString stringWithFormat:@"%ld cheeses", (long)cheeseCount];
    }
    
    /*
     (You will learn more about if/else statements in the next checkpoint.)
     */
    
    return cheeseNumber;
}

@end
