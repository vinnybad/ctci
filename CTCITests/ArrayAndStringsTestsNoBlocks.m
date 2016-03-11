//
//  ArrayAndStringsTestsNoBlocks.m
//  CTCI
//
//  Created by Vinayak Badrinathan on 3/10/16.
//  Copyright © 2016 Vinayak Badrinathan. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ArraysAndStrings.h"

@interface ArrayAndStringsTestsNoBlocks : XCTestCase

@end

@implementation ArrayAndStringsTestsNoBlocks

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExercise3SingleReplacement {
    char str[6] = { 'a', 'b', ' ', 'd' };
    char expected[6] = { 'a', 'b', '%', '2', '0', 'd' };
    int tl = 4;
    int al = 6;
    
    ArraysAndStrings *instance = [ArraysAndStrings new];
    [instance replaceSpaces:str withTrueLength:tl andActualLength:al];
    [self is:str withLength:al equalTo:expected];
}

- (void)testExercise3MultipleReplacement {
    char str[10] = { 'a', 'b', ' ', 'd', ' ', 'f' };
    char expected[10] = { 'a', 'b', '%', '2', '0', 'd', '%', '2', '0', 'f' };
    int tl = 6;
    int al = 10;
    
    ArraysAndStrings *instance = [ArraysAndStrings new];
    [instance replaceSpaces:str withTrueLength:tl andActualLength:al];
    [self is:str withLength:al equalTo:expected];
}


#pragma mark - Utility
- (BOOL)is:(char [])a withLength:(NSInteger)length equalTo:(char[])b {
    for (int i=0; i < length; i++) {
        XCTAssertEqual(a[i], b[i]);
    }
}

@end
