//
//  MasterRollingTitle.h
//  Master
//  频道滚动标题
//  Created by eric on 2018/7/4.
//  Copyright © 2018 qushenghuo. All rights reserved.
//

#import <UIKit/UIKit.h>

#define WeakSelf __weak typeof(self) weakSelf = self;

@interface MasterRollingTitle : UIView
{
    NSTimer *rollingTimer;    //滚动定时器
    BOOL showFlag;
}

@property(nonatomic, strong) UILabel *titleLabel;      //主标题
@property(nonatomic, strong) UILabel *subtitleLabel;   //子标题
@property(nonatomic, strong) UIView *topMaskView;      //上部遮罩
@property(nonatomic, strong) UIView *bottomMaskView;   //下部遮罩

/**
 初始化标题和副标题

 @param titleStr 标题
 @param subtitleStr 副标题
 */
-(void)setTitleAndSubtitleWith:(NSString *) titleStr And:(NSString *) subtitleStr;

/**
 开始滚动
 */
-(void)startRolling;

/**
 停止滚动
 */
-(void)stopRolling;

@end


