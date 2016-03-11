#import "ArraysAndStrings.h"

SpecBegin()

describe(@"1.1 - isUnique", ^{

    it(@"empty strings should be unique", ^{
        NSString *test = @"";
        expect([test ctc_isUnique]).to.beTruthy();
    });
    
    it(@"should properly recognize unique strings", ^{
        NSString *test = @"abcdefg";
        expect([test ctc_isUnique]).to.beTruthy();
    });
    
    it(@"should properly recognize unique strings with spaces", ^{
        NSString *test = @"abcde fghij";
        expect([test ctc_isUnique]).to.beTruthy();
    });
    
    it(@"should properly identify non-unique strings with spaces", ^{
        NSString *test = @"a b c d e f g";
        expect([test ctc_isUnique]).to.beFalsy();
    });
    
    it(@"should properly identify non-unique strings", ^{
        NSString *test = @"a b c d e f g a b c ";
        expect([test ctc_isUnique]).to.beFalsy();
    });

});

describe(@"1.2", ^{
    
    it(@"should recognize a valid permutation", ^{
        NSString *a = @"abc";
        NSString *b = @"cab";
        expect([NSString isString:a aPermutationOf:b]).to.beTruthy();
    });
    
    it(@"should recognize an invalid permutation", ^{
        NSString *a = @"abc";
        NSString *b = @"def";
        expect([NSString isString:a aPermutationOf:b]).to.beFalsy();
    });
    
    it(@"should recognize an empty string as a permutation of another empty string", ^{
        NSString *a = @"";
        NSString *b = @"";
        expect([NSString isString:a aPermutationOf:b]).to.beTruthy();
    });
    
    it(@"should recognize an empty and a nil as an invalid permutation", ^{
        NSString *a = @"";
        NSString *b = nil;
        expect([NSString isString:a aPermutationOf:b]).to.beFalsy();

        a = nil;
        b = @"";
        expect([NSString isString:a aPermutationOf:b]).to.beFalsy();
    });
    
});


SpecEnd
