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
    
    MasterRollingTitle *test1 = [[MasterRollingTitle alloc] initWithFrame:CGRectMake(375/2-30-100, 150, 60, 45)];
    [test1 setTitleAndSubtitleWith:@"关注" And:@""];

    MasterRollingTitle *test2 = [[MasterRollingTitle alloc] initWithFrame:CGRectMake(375/2-30-50, 150, 60, 45)];
    [test2 setTitleAndSubtitleWith:@"广场" And:@""];

    MasterRollingTitle *test3 = [[MasterRollingTitle alloc] initWithFrame:CGRectMake(375/2-30, 150, 60, 45)];
    [test3 setTitleAndSubtitleWith:@"国学" And:@"塔罗"];

    MasterRollingTitle *test4 = [[MasterRollingTitle alloc] initWithFrame:CGRectMake(375/2-30+50, 150, 60, 45)];
    [test4 setTitleAndSubtitleWith:@"养身" And:@""];
    
    MasterRollingTitle *test5 = [[MasterRollingTitle alloc] initWithFrame:CGRectMake(375/2-30+100, 150, 60, 45)];
    [test5 setTitleAndSubtitleWith:@"佛学" And:@"瑜伽"];

    
    [self.view addSubview:test1];
    [self.view addSubview:test2];
    [self.view addSubview:test3];
    [self.view addSubview:test4];
    [self.view addSubview:test5];

    
//    test = [[MasterRollingTitle alloc] initWithFrame:CGRectMake(375/2-30, 150, 60, 45)];
//    [test setTitleAndSubtitleWith:@"国学" And:@""];
//    [test setTitleAndSubtitleWith:@"国学" And:@"塔罗"];
//    [self.view addSubview:test];
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
