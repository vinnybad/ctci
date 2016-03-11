//
//  ArraysAndStrings.m
//  CTCI
//
//  Created by Vinayak Badrinathan on 3/10/16.
//  Copyright © 2016 Vinayak Badrinathan. All rights reserved.
//

#import "ArraysAndStrings.h"

@implementation ArraysAndStrings

//1.3
- (void)replaceSpaces:(char [])str withTrueLength:(int)l andActualLength:(int)al {
    if( al > 0 ) {
        int i = al - 1;
        int j = l - 1;
        
        while( i >= 0 && i != j && j >= 0 ) {
            if( str[j] == ' ' ) {
                if( i > 1 ) {
                    str[i] = '0';
                    str[i-1] = '2';
                    str[i-2] = '%';
                    i -= 2;
                } else {
                    [NSException raise:@"InvalidArgumentException" format:@"the char array doesn't match with the true and/or actual length"];
                }
            } else {
                str[i] = str[j];
            }
            
            i--; j--;
        }
        
        if( i != j ) {
            [NSException raise:@"InvalidArgumentException" format:@"the char array doesn't match with the true and/or actual length"];
        }
    }
}

@end
