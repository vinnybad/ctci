//
//  NSString+ArraysAndStrings.m
//  CTCI
//
//  Created by Vinayak Badrinathan on 3/10/16.
//  Copyright © 2016 Vinayak Badrinathan. All rights reserved.
//

#import "NSString+ArraysAndStrings.h"

@implementation NSString (ArraysAndStrings)

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

@end
