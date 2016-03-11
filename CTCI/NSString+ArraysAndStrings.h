//
//  NSString+ArraysAndStrings.h
//  CTCI
//
//  Created by Vinayak Badrinathan on 3/10/16.
//  Copyright © 2016 Vinayak Badrinathan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (ArraysAndStrings)

+ (BOOL)isString:(NSString *)a aPermutationOf:(NSString *)b;

- (BOOL)ctc_isUnique;

@end
