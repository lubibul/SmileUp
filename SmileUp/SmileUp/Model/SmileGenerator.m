//
//  SmileGenerator.m
//  SmileUp
//
//  Created by Lulu Tang on 2/12/14.
//  Copyright (c) 2014 Lulu Tang. All rights reserved.
//

#import "SmileGenerator.h"

@interface SmileGenerator()
@property (strong, nonatomic) NSMutableArray *compliments; // of NSString
@end

@implementation SmileGenerator
- (NSMutableArray *)compliments
{
    if (!_compliments) {
        _compliments = [[NSMutableArray alloc] init];
    }
    
    return _compliments;
}

- (NSString *)pickCompliment
{
    NSString *result = nil;
    
    if ([self.compliments count]) {
        unsigned index = arc4random() % [self.compliments count];
        result = self.compliments[index];
    }
    
    return result;
}
@end
