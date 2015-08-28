//
//  NSString+NSString_PigLatinization.m
//  PigLatin
//
//  Created by Steve on 2015-08-28.
//  Copyright (c) 2015 Steve. All rights reserved.
//

#import "NSString+NSString_PigLatinization.h"

@implementation NSString (NSString_PigLatinization)

-(NSString *)stringByPigLatinization {
    
    
    NSCharacterSet *vowels = [NSCharacterSet characterSetWithCharactersInString:@"aeiou"];
    
    NSArray *thisArray = [self componentsSeparatedByString:@" "];
    
    NSString *result = @"";
    
    for (int i = 0; i < [thisArray count]; i++) {
        NSRange range = [thisArray[i] rangeOfCharacterFromSet:vowels];
        if (range.location != NSNotFound) {
            
            NSString *lettersBeforeVowels = [thisArray[i] substringWithRange:NSMakeRange(0, range.location)];

            NSString *lettersAfterVowels = [thisArray[i] substringWithRange:NSMakeRange(range.location, [thisArray[i] length] - range.location)];
            
            NSString *newString = [[lettersAfterVowels stringByAppendingString:lettersBeforeVowels] stringByAppendingString:@"ay"];
            
            NSString *firstChar = [[newString substringToIndex:1] uppercaseString];
            
            newString = [firstChar stringByAppendingString:[[newString substringFromIndex:1] lowercaseString]];
            
            
            result = [[NSString stringWithFormat:@"%@ %@", result, newString] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
        } else {
            NSLog(@"No vowels found in %@!!", thisArray[i]);
        }
        
    }
    
    
    return result;
}


@end
