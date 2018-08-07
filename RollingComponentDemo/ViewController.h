//
//  ViewController.h
//  RollingComponentDemo
//
//  Created by eric on 2018/7/4.
//  Copyright © 2018 eric. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MasterRollingTitle.h"


@interface ViewController : UIViewController
{
    MasterRollingTitle *test;
}
- (IBAction)startRollingBtnSelector:(UIButton *)sender;

@end

