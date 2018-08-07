//
//  MasterRollingTitle.m
//  Master
//
//  Created by eric on 2018/7/4.
//  Copyright © 2018 qushenghuo. All rights reserved.
//

#import "MasterRollingTitle.h"

@implementation MasterRollingTitle


-(instancetype)initWithFrame:(CGRect)frame And:(NSString *)titleStr Andsubtitle:(NSString *)subtitleStr
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor grayColor];
        [self setupRollingViewComponentWith:titleStr Andsubtitle:subtitleStr];
    }
    return self;

}

-(UILabel *)titleLabel
{
    if (!_titleLabel) {
        _titleLabel = [UILabel new];
        _titleLabel.backgroundColor = [UIColor clearColor];
        _titleLabel.font = [UIFont systemFontOfSize:15];
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        
        [self addSubview:_titleLabel];
    }
    
    return _titleLabel;
}

-(UILabel *)subtitleLabel
{
    if (!_subtitleLabel) {
        _subtitleLabel = [UILabel new];
        _subtitleLabel.backgroundColor = [UIColor clearColor];
        _subtitleLabel.font = [UIFont systemFontOfSize:15];
        _subtitleLabel.textAlignment = NSTextAlignmentCenter;
        
        [self addSubview:_subtitleLabel];
    }
    
    return _subtitleLabel;
}


-(void)setupRollingViewComponentWith:(NSString *)titleStr Andsubtitle:(NSString *)subtitleStr
{
    if (subtitleStr.length > 0) {
        self.titleLabel.frame =CGRectMake(0, 45/2-15/2, self.frame.size.width, 15);
        self.titleLabel.text = titleStr;
        
        self.subtitleLabel.frame = CGRectMake(0, 30, self.frame.size.width, 15);
        self.subtitleLabel.text = subtitleStr;
        
        rollingTimer = [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(timerAction) userInfo:nil repeats:YES];
        showFlag = NO;
        [rollingTimer setFireDate:[NSDate distantPast]];
    } else {
        self.titleLabel.frame =CGRectMake(0, 45/2-15/2, self.frame.size.width, 15);
        self.titleLabel.text = titleStr;
        self.titleLabel.backgroundColor = [UIColor yellowColor];

    }

    UIView *topMaskView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, 15)];
    topMaskView.backgroundColor = [UIColor purpleColor];
    topMaskView.alpha = 1;
    UIView *bottomMaskView = [[UIView alloc] initWithFrame:CGRectMake(0, 30, self.frame.size.width, 15)];
    bottomMaskView.backgroundColor = [UIColor purpleColor];
    bottomMaskView.alpha = 1;
    
    [self addSubview:topMaskView];
    [self addSubview:bottomMaskView];
}


/**
 启动和停止定时器
 */
-(void)startRolling
{
    [rollingTimer setFireDate:[NSDate distantPast]];
}

-(void)stopRolling
{
    [rollingTimer invalidate];
    rollingTimer = nil;
}


/**
 定时器
 */
-(void)timerAction{
    if (showFlag) {
        showFlag = NO;
        [self showTitleRolling];
    } else {
        showFlag = YES;
        [self showSubtitleRolling];
    }
}

/**
 显示标题
 */
-(void)showTitleRolling{
    self.titleLabel.alpha = 1;
    [UIView animateWithDuration:0.5 animations:^{
        self.titleLabel.frame = CGRectMake(0, 45/2-15/2, self.frame.size.width, 15);
        self.subtitleLabel.frame = CGRectMake(0, 0, self.frame.size.width, 15);
    } completion:^(BOOL finished) {
        
        self.subtitleLabel.alpha = 0;
        self.subtitleLabel.frame = CGRectMake(0, 30, self.frame.size.width, 15);
    }];
}

/**
 显示副标题
 */
-(void)showSubtitleRolling{
    self.subtitleLabel.alpha = 1;
    
    [UIView animateWithDuration:0.5 animations:^{
        self.titleLabel.frame = CGRectMake(0, 0, self.frame.size.width, 15);
        self.subtitleLabel.frame = CGRectMake(0, 45/2-15/2, self.frame.size.width, 15);
    } completion:^(BOOL finished) {
        self.titleLabel.alpha = 0;
        self.titleLabel.frame = CGRectMake(0, 30, self.frame.size.width, 15);
    }];
}




@end
