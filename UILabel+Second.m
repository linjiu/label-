//
//  UILabel+Second.m
//  test01
//
//  Created by 09 on 15/11/24.
//  Copyright © 2015年 yifan. All rights reserved.
//

#import "UILabel+Second.h"

@implementation UILabel (Second)

//给label添加文字
- (void)detailWithText:(NSString *)text second:(NSInteger)second;
{
    //分钟
    NSInteger minute = second / 60;
    
    //秒数
    NSInteger returnSecond = second % 60;
    
    //拼接为label的文字标题
    NSString *title = [NSString stringWithFormat:@"#%@ / %ld' %ld\"", text,(long)minute,(long)returnSecond];
    
    self.text = title;
}

//转化时间的显示格式
- (void)dateStringWithDate:(NSTimeInterval)date
{
    //根据时间戳求出时间
    NSDate *dateNow = [NSDate dateWithTimeIntervalSince1970:date];
    
    //设置date样式
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    
    //formatter样式 MM是阿拉伯数字 MMM英文简写 MMMM是英文全拼
    formatter.dateFormat = @"MMM-dd";
    
    //输出格式为英文
    formatter.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"en-us"];
    
    //使用系统所在时区
    formatter.timeZone = [NSTimeZone systemTimeZone];
    
    NSString *dateStr = [formatter stringFromDate:dateNow];
    
    self.text = dateStr;
    
    
}

//时间转化为分钟格式
- (void)timeStringWithSecond:(NSInteger)second
{
    //分钟
    NSInteger minute = second / 60;
    //秒数
    NSInteger returnSec = second % 60;
    
    NSString *titleStr = [NSString stringWithFormat:@"%02ld:%02ld",(long)minute,(long)returnSec];
    
    self.text = titleStr;
}

@end
