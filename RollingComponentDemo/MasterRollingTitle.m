//
//  MasterRollingTitle.m
//  Master
//
//  Created by eric on 2018/7/4.
//  Copyright © 2018 qushenghuo. All rights reserved.
//

#import "MasterRollingTitle.h"

@implementation MasterRollingTitle


-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupRollingViewComponent];
    }

    return self;
}


-(void)setupRollingViewComponent
{
    self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 60, 40)];
    self.titleLabel.backgroundColor = [UIColor greenColor];
    [self addSubview:self.titleLabel];
    
    
    self.subtitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, -40, 60, 40)];
    self.subtitleLabel.backgroundColor = [UIColor purpleColor];
    [self addSubview:self.subtitleLabel];

    rollingTimer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timerAction) userInfo:nil repeats:YES];
    testflag = YES;
    [rollingTimer setFireDate:[NSDate distantFuture]];

}

-(void)startRolling
{
    [rollingTimer setFireDate:[NSDate distantPast]];
}

-(void)timerAction{
    if (testflag) {
        [self showTitleRolling];
        testflag = NO;
    } else {
        [self showSubtitleRolling];
        testflag = YES;
    }
}

-(void)showSubtitleRolling{
    
    [UIView animateWithDuration:0.5 animations:^{
        self.titleLabel.frame = CGRectMake(0, 40, 60, 0);
        self.subtitleLabel.frame = CGRectMake(0, 0, 60, 40);
    } completion:^(BOOL finished) {
        self.titleLabel.frame = CGRectMake(0, -40, 60, 0);
    }];
}

-(void)showTitleRolling{
    
    [UIView animateWithDuration:0.5 animations:^{
        self.titleLabel.frame = CGRectMake(0, 0, 60, 40);
        self.subtitleLabel.frame = CGRectMake(0, 40, 60, 40);
    } completion:^(BOOL finished) {
        self.subtitleLabel.frame = CGRectMake(0, -40, 60, 40);
    }];
}



@end
