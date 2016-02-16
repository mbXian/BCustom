//
//  ViewController.m
//  BCustomDemo
//
//  Created by Ben on 02/15/2016.
//  Copyright © 2016 com.ben. All rights reserved.
//

#import "ViewController.h"
#import "UIView+BView.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIView *testView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.testView setCornerRadius];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
