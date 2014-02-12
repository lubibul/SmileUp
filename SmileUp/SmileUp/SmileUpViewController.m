//
//  SmileUpViewController.m
//  SmileUp
//
//  Created by Lulu Tang on 2/12/14.
//  Copyright (c) 2014 Lulu Tang. All rights reserved.
//

#import "SmileUpViewController.h"
#import "SmileGenerator.h"

@interface SmileUpViewController ()

@property (strong, nonatomic)SmileGenerator *smilegenerator;
@property (weak, nonatomic) IBOutlet UILabel *complimentLabel;

@end

@implementation SmileUpViewController

- (SmileGenerator *)smilegenerator
{
    if (!_smilegenerator) {
        _smilegenerator = [[SmileGenerator alloc] init];
    }
    return _smilegenerator;
}

- (IBAction)clickSmileButton:(UIButton *)sender {
    NSString *compliment = nil;
    compliment = [self.smilegenerator pickCompliment];
    self.complimentLabel.text = compliment;
}

@end
