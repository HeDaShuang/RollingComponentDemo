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
    
    
    MasterRollingTitle *test0 = [[MasterRollingTitle alloc] initWithFrame:CGRectMake(10, 150, 60, 45) And:@"悬赏" Andsubtitle:@""];
    
    [self.view addSubview:test0];

    
    test = [[MasterRollingTitle alloc] initWithFrame:CGRectMake(75, 150, 60, 45) And:@"国学" Andsubtitle:@"养身"];
    [self.view addSubview:test];
    
    MasterRollingTitle *test2 = [[MasterRollingTitle alloc] initWithFrame:CGRectMake(140, 150, 100, 45) And:@"心理学" Andsubtitle:@"冥想禅修"];

    
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
