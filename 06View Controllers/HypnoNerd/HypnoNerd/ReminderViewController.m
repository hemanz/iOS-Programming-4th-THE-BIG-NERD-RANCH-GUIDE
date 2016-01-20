//
//  ReminderViewController.m
//  HypnoNerd
//
//  Created by 鹤楠 on 16/1/20.
//  Copyright (c) 2016年 HMZ. All rights reserved.
//

#import "ReminderViewController.h"
#import "AppDelegate.h"

@interface ReminderViewController ()

@property (nonatomic, weak)IBOutlet UIDatePicker *datePicker;

@end

@implementation ReminderViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

//- (IBAction)addReminder:(id)sender{
//    NSDate *date = self.datePicker.date;
//    NSLog(@"date:%@",date);
//}

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
