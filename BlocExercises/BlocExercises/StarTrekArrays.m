//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    NSArray *starTrekCharsArray = [characterString componentsSeparatedByString:@";"];
    return starTrekCharsArray;
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    NSString *starTrekCharsString = [characterArray componentsJoinedByString:@";"];
    return starTrekCharsString;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    
    NSSortDescriptor *sorter = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    NSArray *newArray = [characterArray sortedArrayUsingDescriptors:@[sorter]];
    return newArray;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    
    BOOL worfIsPresent = NO;
    
    NSPredicate *containsWorf = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] 'Worf'"];
    NSArray *testArray = [characterArray filteredArrayUsingPredicate:containsWorf];
    
    if (testArray.count > 0)
    {
        worfIsPresent = YES;
    }
    
    
    return worfIsPresent;
}

@end
