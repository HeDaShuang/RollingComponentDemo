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

-(void)setTitleAndSubtitleWith:(NSString *) titleStr And:(NSString *) subtitleStr;


-(void)startRolling;

-(void)stopRolling;

@end


