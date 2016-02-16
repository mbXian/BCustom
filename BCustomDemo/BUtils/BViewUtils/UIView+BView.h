//
//  UIView+BView.h
//  BCustomDemo
//
//  Created by Ben on 15/8/17.
//  Copyright (c) 2015年 com.xpg. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (BView)

/**
 * @brief 圆角
 */
- (void)setCornerRadius;

/**
 * @brief 圆形
 */
- (void)setRoundView;

/**
 * @brief 设置边框
 */
- (void)setBorderColor:(UIColor *)color;

/**
 * @brief 设置label宽度根据文字长度自动适配
 * @parame text UIlabel的文字
 * @return CGSize UIlabel自适应之后的大小
 */
- (CGSize)setAutoSizeWidthWithLabelText:(NSString *)text;

/**
 * @brief 设置TextView宽度根据文字长度自动适配
 * @parame text TextView的文字
 * @return CGSize TextView自适应之后的大小
 */
- (CGSize)setAutoSizeWidthWithTextViewText:(NSString *)text;

- (void)traverseSubviewsWithBlock:(void(^)(UIView *view))block;
+(UIView *)shareInstanceWithClassName:(NSString *)className;

@end
