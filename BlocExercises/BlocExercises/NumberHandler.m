//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    
    NSInteger unboxednumber = [number integerValue]; //get the int out of the NSNumber
    NSNumber *result = [NSNumber numberWithInteger:(unboxednumber*2)]; //do the math and wrap it again
    
    return result;
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    
    NSMutableArray *result = [NSMutableArray new]; //empty array for result
    NSInteger bigger = 0; //comparison empties
    NSInteger smaller = 0;
    
    if (number >= otherNumber) //decide which is bigger
    {
        bigger = number;
        smaller = otherNumber;
    }
    else
    {
        bigger = otherNumber;
        smaller = number;
    }
    
    for (NSInteger i = smaller; i <= bigger; i++) //must handle equal numbers
    {
        NSNumber *temp = [NSNumber numberWithInteger:i];
        [result addObject:temp];
    }
    
    return result;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    
    NSNumber *lowest = arrayOfNumbers[0]; //start with first number in array
    
    for (NSNumber *tester in arrayOfNumbers) //now loop through and compare
    {
        if ([lowest compare:tester]==NSOrderedDescending) //class comparison method
        {
            lowest = tester; //replace if lower
        }
        
    }
    
    
    return [lowest integerValue]; //re-wrap as NSInteger
}

@end
