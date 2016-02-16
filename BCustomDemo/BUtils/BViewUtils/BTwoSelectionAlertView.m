//
//  BTwoSelectionAlertView.m
//  BCustomDemo
//
//  Created by Ben on 11/12/2015.
//  Copyright © 2015 xpg. All rights reserved.
//

#import "BTwoSelectionAlertView.h"
#import "UIColor+BColor.h"

@implementation BTwoSelectionAlertView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)init{
    self = [super init];
    NSBundle *bundle = [NSBundle mainBundle];
    self = [[bundle loadNibNamed:@"BTwoSelectionAlertView" owner:self options:nil]firstObject];
    return self;
}

/**
 * @brief show custom alertView 
 * @parame target
 * @parameters window 添加到的window
 * @parameters title 标题
 **/
+ (instancetype)showAlertViewWithTarget:(id)target window:(UIWindow *)window title:(NSString *)title message:(NSString *)msg confirmText:(NSString *)confirmText cancelText:(NSString *)cancelText{
    BTwoSelectionAlertView *alertView = [[BTwoSelectionAlertView alloc]init];
    alertView.frame = [UIScreen mainScreen].bounds;
    alertView.titleLabel.text = title;
    alertView.msgTextView.text = msg;
    alertView.backgroundColor = [UIColor alertBackgroudColor];
    
    [alertView.confirmBtn setTitle:confirmText forState:UIControlStateNormal];
    [alertView.cancelButton setTitle:cancelText forState:UIControlStateNormal];
    
    CGFloat max_height = alertView.frame.size.width - 40.0 - 40.0 - 80.0;
    CGFloat contentHeight = [BTwoSelectionAlertView heightForTextView:alertView.msgTextView WithText:msg];
    if (contentHeight > max_height) {
        alertView.msgTextViewHeight.constant = max_height + 16.0f;
    }else{
        alertView.msgTextViewHeight.constant = contentHeight + 16.0f;
    }
    [window addSubview:alertView];
    return alertView;
}

- (IBAction)confirmClick:(id)sender{
    if ([self.delegate respondsToSelector:@selector(bTwoSelectionAlertViewConfirm:)]) {
        [self.delegate bTwoSelectionAlertViewConfirm:self];
    }
    [self removeFromSuperview];
}

- (IBAction)cancelClick:(id)sender{
    [self removeFromSuperview];
}

//根据文字长度算出textView 的高度
+ (float) heightForTextView: (UITextView *)textView WithText: (NSString *) strText{
    float fPadding = 16.0; // 8.0px x 2
    CGSize constraint = CGSizeMake(textView.contentSize.width - fPadding, CGFLOAT_MAX);
    
    CGSize size = [strText sizeWithFont: textView.font constrainedToSize:constraint lineBreakMode:UILineBreakModeWordWrap];
    
    float fHeight = size.height + 16.0;
    
    return fHeight;
}
@end
