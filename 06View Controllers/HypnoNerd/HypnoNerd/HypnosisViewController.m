//
//  HypnosisViewController.m
//  HypnoNerd
//
//  Created by 鹤楠 on 16/1/20.
//  Copyright (c) 2016年 HMZ. All rights reserved.
//

#import "HypnosisViewController.h"
#import "HypnosisterView.h"

@interface HypnosisViewController ()

@end

@implementation HypnosisViewController

- (void)loadView{
    HypnosisterView *backGroundView = [[HypnosisterView alloc] init];
    self.view = backGroundView;
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
