//
//  NSString+ArraysAndStrings.m
//  CTCI
//
//  Created by Vinayak Badrinathan on 3/10/16.
//  Copyright © 2016 Vinayak Badrinathan. All rights reserved.
//

#import "NSString+ArraysAndStrings.h"

@implementation NSString (ArraysAndStrings)

// 1.1
- (BOOL)ctc_isUnique {
    for( int i=0; i < self.length; i++ ) {
        unichar c = [self characterAtIndex:i];
        
        if( [self ctc_containsUnichar:c afterIndex:i] ) {
            return false;
        }
    }
    
    return true;
}

- (BOOL)ctc_containsUnichar:(unichar)c afterIndex:(NSInteger)i {
    if( i > self.length ) {
        [NSException raise:@"InvalidArgumentException" format:@"invalid argument"];
    }
    
    for( NSInteger j = i+1; j < self.length; j++ ) {
        if( c == [self characterAtIndex:j] ) {
            return true;
        }
    }
    
    return false;
}


// 1.2
+ (BOOL)isString:(NSString *)a aPermutationOf:(NSString *)b {
    if( a == b ) return true;
    NSDictionary *ac = [a ctc_occurrenceCount];
    NSDictionary *bc = [b ctc_occurrenceCount];
    return [ac isEqualToDictionary:bc];
}

- (NSDictionary *)ctc_occurrenceCount {
//    if( !self ) return nil;
    if( !self || self.length <= 0 ) return [NSDictionary new];
    NSMutableDictionary *counts = [NSMutableDictionary new];
    
    for( int i = 0; i < self.length; i++ ) {
        NSString *s = [NSString stringWithFormat:@"%C", [self characterAtIndex:i]];
        NSNumber *count = counts[s];
        counts[s] = @([count intValue] + 1);
    }
    
    return counts;
}


@end
