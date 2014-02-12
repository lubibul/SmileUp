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
        [_compliments addObject:(@"You look fantastic today!")];
        [_compliments addObject:(@"You have very smooth hair.")];
        [_compliments addObject:(@"You deserve a promotion.")];
        [_compliments addObject:(@"What a fine sweater!")];
        [_compliments addObject:(@"I appreciate all of your opinions.")];
        [_compliments addObject:(@"I like your style.")];
        [_compliments addObject:(@"Your T-shirt smells fresh.")];
        [_compliments addObject:(@"I love what you've done with the place.")];
        [_compliments addObject:(@"You are like a spring flower; beautiful and vivacious.")];
        [_compliments addObject:(@"I am utterly disarmed by your wit.")];
        [_compliments addObject:(@"I really enjoy the way you pronounce the word 'ruby'.")];
        [_compliments addObject:(@"I like your Facebook status.")];
        [_compliments addObject:(@"That looks nice on you.")];
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

- (void)addCompliment:(NSString *)compliment
{
    [self.compliments addObject:compliment];
}

@end
