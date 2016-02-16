//
//  UILabel+BLabel.m
//  BCustomDemo
//
//  Created by Ben on 15/8/24.
//  Copyright (c) 2015年 com.xpg. All rights reserved.
//

#import "UILabel+BLabel.h"

@implementation UILabel (BLabel)

/**
 *  @brief 个别字体颜色不一样
 *  @parame string 设置label的文字
 *  @parame stringColor 文字的颜色
 *  @parame specialString 特殊字符
 *  @parame specialColor 特殊字符的颜色
 */
- (void)setString:(NSString *)string stringColor:(UIColor *)stringColor SpecialString:(NSString *)specialString specialColor:(UIColor *)specialColor{
    self.textColor = stringColor;
    NSMutableAttributedString *noteStr = [[NSMutableAttributedString alloc] initWithString:string];
    NSRange countRange = NSMakeRange([[noteStr string] rangeOfString:specialString].location, [[noteStr string] rangeOfString:specialString].length);
    [noteStr addAttribute:NSForegroundColorAttributeName value:specialColor range:countRange];
    [self setAttributedText:noteStr];
}

/**
 * @brief 设置label宽度根据文字长度自动适配
 * @parame text UIlabel的文字
 * @return CGSize UIlabel自适应之后的大小
 */
- (CGSize)setAutoSizeWidthWithLabelText:(NSString *)text{
    UIFont * tfont = ((UILabel *)self).font;
    CGSize originSize = CGSizeMake(320.0, self.bounds.size.height);
    //    获取当前文本的属性
    NSDictionary * tdic = [NSDictionary dictionaryWithObjectsAndKeys:tfont,NSFontAttributeName,nil];
    CGSize  actualsize = [text boundingRectWithSize:originSize options:NSStringDrawingUsesLineFragmentOrigin  attributes:tdic context:nil].size;
    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, actualsize.width, self.frame.size.height);
    ((UILabel *)self).text = text;
    return actualsize;
}
@end
