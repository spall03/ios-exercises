//
//  StuffRememberer.m
//  BlocExercises
//
//  Created by Aaron on 6/12/14.
//
//

#import "StuffRememberer.h"

@implementation StuffRememberer

- (void) rememberThisArrayForLater:(NSMutableArray *)arrayToRemember {
    self.rememberedMutableArray = arrayToRemember;
}

- (void) copyThisArrayForLater:(NSMutableArray *)arrayToCopy {
    self.copiedMutableArray = arrayToCopy;
}

- (void) rememberThisFloatForLater:(CGFloat)floatToRemember {
    self.rememberedFloat = floatToRemember;
}

- (NSMutableArray *) arrayYouShouldRemember {
    NSMutableArray *stored = self.rememberedMutableArray;
    return stored;
}

- (NSMutableArray *) arrayYouShouldCopy {
    NSMutableArray *copied = self.copiedMutableArray;
    return copied;
}

- (CGFloat) floatYouShouldRemember {
    CGFloat floater = self.rememberedFloat;
    return floater;
}

@end