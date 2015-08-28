//
//  main.m
//  PigLatin
//
//  Created by Steve on 2015-08-28.
//  Copyright (c) 2015 Steve. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+NSString_PigLatinization.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *thisString = @"";
        NSString *result = [thisString stringByPigLatinization];
        
        
        NSLog(@"%@", result);

        
//        NSCharacterSet *vowels = [NSCharacterSet characterSetWithCharactersInString:@"aeiou"];
//        
//        NSString *thisString = @"ttttest ttest test test";
//        
//        NSArray *thisArray = [thisString componentsSeparatedByString:@" "];
//        
//        
//        for (int i = 0; i < [thisArray count]; i++) {
//            NSRange range = [thisArray[i] rangeOfCharacterFromSet:vowels];
//            if (range.location != NSNotFound) {
//                
//                NSString *lettersBeforeVowels = [thisArray[i] substringWithRange:NSMakeRange(0, range.location)];
////                NSLog(@"%i", range.location);
//                NSLog(@"%@", lettersBeforeVowels);
//                
//                NSString *lettersAfterVowels = [thisArray[i] substringWithRange:NSMakeRange(range.location, [thisArray[i] length] - range.location)];
//                NSLog(@"%@", lettersAfterVowels);
//                
//                NSString *newString = [[lettersAfterVowels stringByAppendingString:lettersBeforeVowels] stringByAppendingString:@"ay"];
//                NSLog(@"%@", newString);
//            }
//            
//        }
//        
////        NSString *test = [thisString substringWithRange:]
//        
////        NSLog(@"%lu", (unsigned long)range.location);
        
    }
    return 0;
}
