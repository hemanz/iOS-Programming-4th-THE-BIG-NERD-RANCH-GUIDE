//
//  ZHNDrawViewController.m
//  TouchTracker
//
//  Created by 鹤楠 on 15/10/19.
//  Copyright (c) 2015年 binfenfuture. All rights reserved.
//

#import "ZHNDrawViewController.h"
#import "ZHNDrawView.h"

@interface ZHNDrawViewController ()

@end

@implementation ZHNDrawViewController

- (void)loadView{
    self.view = [[ZHNDrawView alloc] initWithFrame:CGRectZero];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
