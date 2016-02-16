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
 * @brief 浅蓝色
 ****/
+ (UIColor *)lightBlueColor{
    return [UIColor colorWithRed:0.5 green:0.75 blue:0.93 alpha:1];
}

/***
 * @brief 浅浅灰
 ***/
+ (UIColor *)lightLightGray{
    return [UIColor colorWithRed:0.3 green:0.3 blue:0.3 alpha:0.3];
}

/***
 * @brief 透明灰色
 ***/
+ (UIColor *)transperentGray{
    return [UIColor colorWithRed:0.3 green:0.3 blue:0.3 alpha:0.3];
}
@end
