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
    // Do any additional setup after loading the view, typically from a nib.
    
    test = [[MasterRollingTitle alloc] initWithFrame:CGRectMake(100, 150, 60, 40)];
    [self.view addSubview:test];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)startRollingBtnSelector:(UIButton *)sender {
    [test startRolling];
}
@end
