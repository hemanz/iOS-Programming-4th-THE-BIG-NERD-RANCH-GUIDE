//
//  ZHNDrawView.h
//  TouchTracker
//
//  Created by 鹤楠 on 15/10/19.
//  Copyright (c) 2015年 binfenfuture. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZHNLine.h"

@interface ZHNDrawView : UIView

@property (nonatomic, strong) ZHNLine *currentLine;
@property (nonatomic, strong) NSMutableArray *finishedLines;


@end
