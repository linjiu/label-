//
//  UILabel+Second.h
//  test01
//
//  Created by 09 on 15/11/24.
//  Copyright © 2015年 yifan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (Second)

//给label添加文字
- (void)detailWithText:(NSString *)text second:(NSInteger)second;

//转化时间的显示格式
- (void)dateStringWithDate:(NSTimeInterval)date;

//时间转化为分钟格式
- (void)timeStringWithSecond:(NSInteger)second;

@end
