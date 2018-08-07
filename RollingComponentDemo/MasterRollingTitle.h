//
//  MasterRollingTitle.h
//  Master
//  频道滚动标题
//  Created by eric on 2018/7/4.
//  Copyright © 2018 qushenghuo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MasterRollingTitle : UIView
{
    NSTimer *rollingTimer;    //滚动定时器
    CGFloat selfheight;
    BOOL showFlag;
}
@property(nonatomic, strong) UILabel *titleLabel;      //主标题
@property(nonatomic, strong) UILabel *subtitleLabel;   //子标题

-(instancetype)initWithFrame:(CGRect)frame And:(NSString *) titleStr Andsubtitle:(NSString *) subtitleStr;

-(void)startRolling;

-(void)stopRolling;

@end
