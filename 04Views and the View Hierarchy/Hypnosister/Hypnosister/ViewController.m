//
//  ViewController.m
//  Hypnosister
//
//  Created by 鹤楠 on 15/12/17.
//  Copyright (c) 2015年 HMZ. All rights reserved.
//

#import "ViewController.h"
#import "HypnosisterView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    HypnosisterView *HypnView = [[HypnosisterView alloc] initWithFrame:self.view.bounds];
    HypnView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:HypnView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
