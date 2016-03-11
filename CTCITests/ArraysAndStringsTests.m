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

SpecEnd
