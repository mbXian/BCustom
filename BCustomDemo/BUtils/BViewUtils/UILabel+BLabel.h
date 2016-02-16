//
//  UILabel+BLabel.h
//  BCustomDemo
//
//  Created by Ben on 15/8/24.
//  Copyright (c) 2015年 com.xpg. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (BLabel)

/**
 *  @brief 个别字体颜色不一样
 *  @parame string 设置label的文字
 *  @parame stringColor 文字的颜色
 *  @parame specialString 特殊字符
 *  @parame specialColor 特殊字符的颜色
 */
- (void)setString:(NSString *)string stringColor:(UIColor *)stringColor SpecialString:(NSString *)specialString specialColor:(UIColor *)specialColor;

/**
 * @brief 设置label宽度根据文字长度自动适配
 * @parame text UIlabel的文字
 * @return CGSize UIlabel自适应之后的大小
 */
- (CGSize)setAutoSizeWidthWithLabelText:(NSString *)text;
@end
