//
//  BNRItemCell.h
//  Subclassing UITbaleViewCell
//
//  Created by 鹤楠 on 15/7/12.
//  Copyright (c) 2015年 hippo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BNRItemCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (nonatomic,strong) IBOutlet UILabel *lableDetile;
@end
