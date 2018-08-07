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
    
    
    MasterRollingTitle *test0 = [[MasterRollingTitle alloc] initWithFrame:CGRectMake(10, 150, 60, 45)];
    [test0 setTitleAndSubtitleWith:@"悬赏" And:@""];
    
    [self.view addSubview:test0];

    
    test = [[MasterRollingTitle alloc] initWithFrame:CGRectMake(75, 150, 60, 45)];
    [test setTitleAndSubtitleWith:@"国学" And:@"养生"];

    [self.view addSubview:test];
    
    MasterRollingTitle *test2 = [[MasterRollingTitle alloc] initWithFrame:CGRectMake(140, 150, 100, 45)];
    [test2 setTitleAndSubtitleWith:@"心理学" And:@"冥想禅修"];

    
    [self.view addSubview:test2];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)startRollingBtnSelector:(UIButton *)sender {
    [test startRolling];
}
@end
