//
//  MasterRollingTitle.m
//  Master
//
//  Created by eric on 2018/7/4.
//  Copyright © 2018 qushenghuo. All rights reserved.
//

#import "MasterRollingTitle.h"

@implementation MasterRollingTitle

-(void)setTitleAndSubtitleWith:(NSString *)titleStr And:(NSString *)subtitleStr{
    if (rollingTimer) {
        [self stopRolling];
    }
    [self setupRollingViewComponentWith:titleStr Andsubtitle:subtitleStr];
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

-(UIView *)topMaskView{
    if (!_topMaskView) {
        _topMaskView = [UIView new];
        _topMaskView.backgroundColor = [UIColor greenColor];
        [self addSubview:_topMaskView];
    }
    
    return _topMaskView;
}

-(UIView *)bottomMaskView{
    if (!_bottomMaskView) {
        _bottomMaskView = [UIView new];
        _bottomMaskView.backgroundColor = [UIColor blueColor];
        [self addSubview:_bottomMaskView];
    }
    
    return _bottomMaskView;
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
        self.titleLabel.backgroundColor = [UIColor whiteColor];
    }
    
    self.topMaskView.frame = CGRectMake(0, 0, self.frame.size.width, 15);
    self.bottomMaskView.frame = CGRectMake(0, 30, self.frame.size.width, 15);
}


/**
 启动和停止定时器
 */
-(void)startRolling
{
    if (rollingTimer) {
        [self stopRolling];
    }
    rollingTimer = [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(timerAction) userInfo:nil repeats:YES];
    showFlag = NO;
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
    WeakSelf;
    
    self.titleLabel.alpha = 1;
    [UIView animateWithDuration:0.5 animations:^{
        weakSelf.titleLabel.frame = CGRectMake(0, 45/2-15/2, weakSelf.frame.size.width, 15);
        weakSelf.subtitleLabel.frame = CGRectMake(0, 0, weakSelf.frame.size.width, 15);
    } completion:^(BOOL finished) {
        
        weakSelf.subtitleLabel.alpha = 0;
        weakSelf.subtitleLabel.frame = CGRectMake(0, 30, weakSelf.frame.size.width, 15);
    }];
}

/**
 显示副标题
 */
-(void)showSubtitleRolling{
    WeakSelf;
    self.subtitleLabel.alpha = 1;
    
    [UIView animateWithDuration:0.5 animations:^{
        weakSelf.titleLabel.frame = CGRectMake(0, 0, weakSelf.frame.size.width, 15);
        weakSelf.subtitleLabel.frame = CGRectMake(0, 45/2-15/2, weakSelf.frame.size.width, 15);
    } completion:^(BOOL finished) {
        weakSelf.titleLabel.alpha = 0;
        weakSelf.titleLabel.frame = CGRectMake(0, 30, weakSelf.frame.size.width, 15);
    }];
}




@end


