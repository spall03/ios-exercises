//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    
    NSString *drink = characterDictionary[@"favorite drink"]; //access the proper key
    return drink;
    
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    
    NSMutableArray *drinks = [[NSMutableArray alloc]init]; //empty array to be filled
    
    for (NSDictionary *character in charactersArray) //iterate through array of dictionaries
    {
        NSString *temp = character[@"favorite drink"]; //access each dict's favorite drink
        [drinks addObject:temp]; //append to empty array
    }
    
    return drinks;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    
    NSMutableDictionary *newDict = [characterDictionary mutableCopy]; //cloning input dict as mutable
    
    if (characterDictionary[@"quote"] == nil) //only add quote if input dict doesn't already have one
    {
        [newDict setObject:@"Reports of my assimilation are greatly exaggerated." forKey:@"quote"];
    }
   
    return newDict;
}

@end
