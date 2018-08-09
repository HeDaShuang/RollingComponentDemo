//
//  ViewController.m
//  RollingComponentDemo
//
//  Created by eric on 2018/7/4.
//  Copyright © 2018 eric. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    test = [[MasterRollingTitle alloc] initWithFrame:CGRectMake(375/2-30, 150, 60, 45)];
//    [test setTitleAndSubtitleWith:@"国学" And:@""];
    [test setTitleAndSubtitleWith:@"国学" And:@"塔罗"];


    [self.view addSubview:test];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)startRollingBtnSelector:(UIButton *)sender {
    [test startRolling];
}
- (IBAction)stopRollingBtnSelector:(UIButton *)sender {
    [test stopRolling];
}
@end
