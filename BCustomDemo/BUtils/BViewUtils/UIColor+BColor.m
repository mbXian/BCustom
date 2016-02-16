//
//  UIColor+BColor.m
//  BCustomDemo
//
//  Created by Ben on 15/8/17.
//  Copyright (c) 2015年 com.xpg. All rights reserved.
//

#import "UIColor+BColor.h"

@implementation UIColor (BColor)

/**
 * @brief 主题色（天蓝色）
 */
+ (UIColor *)themeLightBlueColor{
    return [UIColor colorWithRed:0.13 green:0.6 blue:0.86 alpha:1];
}

/**
 * @brief 弹窗的半透明背景色
 **/
+ (UIColor *)alertBackgroudColor{
    return [UIColor colorWithRed:0.30 green:0.30 blue:0.30 alpha:0.50];
}
@end
