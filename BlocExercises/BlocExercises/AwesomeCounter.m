//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    
    NSInteger larger = 0;
    NSInteger smaller = 0;
    
    //first we figure out which number is smaller
    
    if (number <= otherNumber)
    {
        larger = otherNumber;
        smaller = number;
    }
    else
    {
        larger = number;
        smaller = otherNumber;
    }
    
    //then we build the string
    
    NSMutableString *result = [[NSMutableString alloc]init];
    
    while (smaller <= larger ) //needs to handle the smaller == larger case
    {
        NSString *temp = [NSString stringWithFormat:@"%ld", smaller];
        [result appendString:temp];
        smaller++;
    }
    
    return result;
}

@end
